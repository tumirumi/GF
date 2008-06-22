----------------------------------------------------------------------
-- |
-- Module      : SourceToGrammar
-- Maintainer  : AR
-- Stability   : (stable)
-- Portability : (portable)
--
-- > CVS $Date: 2005/10/04 11:05:07 $ 
-- > CVS $Author: aarne $
-- > CVS $Revision: 1.28 $
--
-- based on the skeleton Haskell module generated by the BNF converter
-----------------------------------------------------------------------------

module GF.Source.SourceToGrammar ( transGrammar,
			 transInclude,
			 transModDef,
			 transOldGrammar,
			 transExp,
			 newReservedWords
		       ) where

import qualified GF.Grammar.Grammar as G
import qualified GF.Grammar.PrGrammar as GP
import qualified GF.Infra.Modules as GM
import qualified GF.Grammar.Macros as M
import qualified GF.Compile.Update as U
import qualified GF.Infra.Option as GO
import qualified GF.Compile.ModDeps as GD
import GF.Grammar.Predef
import GF.Infra.Ident
import GF.Source.AbsGF
import GF.Source.PrintGF
import GF.Compile.RemoveLiT --- for bw compat
import GF.Data.Operations
import GF.Infra.Option

import Control.Monad
import Data.Char
import Data.List (genericReplicate)
import qualified Data.ByteString.Char8 as BS

-- based on the skeleton Haskell module generated by the BNF converter

type Result = Err String

failure :: Show a => a -> Err b
failure x = Bad $ "Undefined case: " ++ show x

getIdentPos :: PIdent -> Err (Ident,Int)
getIdentPos x = case x of
  PIdent ((line,_),c) -> return (IC c,line)

transIdent :: PIdent -> Err Ident
transIdent = liftM fst . getIdentPos

transName :: Name -> Err Ident
transName n = case n of
  IdentName i -> transIdent i
  ListName  i -> liftM mkListId (transIdent i)

transNamePos :: Name -> Err (Ident,Int)
transNamePos n = case n of
  IdentName i -> getIdentPos i
  ListName  i -> liftM (\ (c,p) -> (mkListId c,p)) (getIdentPos i)

transGrammar :: Grammar -> Err G.SourceGrammar
transGrammar x = case x of
  Gr moddefs  -> do
    moddefs' <- mapM transModDef moddefs
    GD.mkSourceGrammar moddefs'

transModDef :: ModDef -> Err (Ident, G.SourceModInfo)
transModDef x = case x of

  MMain id0 id concspecs  -> do
    id0' <- transIdent id0
    id'  <- transIdent id
    concspecs' <- mapM transConcSpec concspecs
    return $ (id0', GM.ModMainGrammar (GM.MainGrammar id' concspecs'))

  MModule compl mtyp body -> do

    let mstat' = transComplMod compl

    (trDef, mtyp', id') <- case mtyp of
      MTAbstract id -> do
        id' <- transIdent id
        return (transAbsDef, GM.MTAbstract, id')
      MTResource id -> mkModRes id GM.MTResource body 
      MTConcrete id open -> do
        id'   <- transIdent id
        open' <- transIdent open
        return (transCncDef, GM.MTConcrete open', id')
      MTTransfer id a b -> do
        id'  <- transIdent id
        a'   <- transOpen a
        b'   <- transOpen a
        return (transAbsDef, GM.MTTransfer a' b', id')
      MTInterface id -> mkModRes id GM.MTInterface body
      MTInstance id open -> do
        open' <- transIdent open
        mkModRes id (GM.MTInstance open') body

    mkBody (mstat', trDef, mtyp', id') body
  where
      poss = emptyBinTree ----

      mkBody xx@(mstat', trDef, mtyp', id') bod = case bod of 
       MNoBody incls -> do
        mkBody xx $ MBody (Ext incls) NoOpens []
       MBody extends opens defs -> do
        extends' <- transExtend extends
        opens'   <- transOpens opens
        defs0    <- mapM trDef $ getTopDefs defs
        poss0    <- return [(i,p) | Left  ds <- defs0, (i,p,_) <- ds]
        defs'    <- U.buildAnyTree [(i,d) | Left  ds <- defs0, (i,_,d) <- ds]
        flags'   <- return $ concatModuleOptions [o | Right o <- defs0]
        let poss1 = buildPosTree id' poss0
        return (id',
          GM.ModMod (GM.Module mtyp' mstat' flags' extends' opens' defs' poss1))
       MReuse _ -> do
        return (id', GM.ModMod (GM.Module mtyp' mstat' noModuleOptions [] [] emptyBinTree poss))
       MUnion imps -> do
        imps' <- mapM transIncluded imps        
        return (id', 
          GM.ModMod (GM.Module (GM.MTUnion mtyp' imps') mstat' noModuleOptions [] [] emptyBinTree poss))

       MWith m insts -> mkBody xx $ MWithEBody [] m insts NoOpens []
       MWithBody m insts opens defs -> mkBody xx $ MWithEBody [] m insts opens defs
       MWithE extends m insts -> mkBody xx $ MWithEBody extends m insts NoOpens []
       MWithEBody extends m insts opens defs -> do
        extends' <- mapM transIncludedExt extends
        m'       <- transIncludedExt m
        insts'   <- mapM transOpen insts 
        opens'   <- transOpens opens
        defs0    <- mapM trDef $ getTopDefs defs
        poss0    <- return [(i,p) | Left  ds <- defs0, (i,p,_) <- ds]
        defs'    <- U.buildAnyTree [(i,d) | Left  ds <- defs0, (i,_,d) <- ds]
        flags'   <- return $ concatModuleOptions [o | Right o <- defs0]
        let poss1 = buildPosTree id' poss0
        return (id',
          GM.ModWith (GM.Module mtyp' mstat' flags' extends' opens' defs' poss1) m' insts')

      mkModRes id mtyp body = do
         id' <- transIdent id
         case body of
           MReuse c -> do
             c' <- transIdent c
             mtyp' <- trMReuseType mtyp c'
             return (transResDef, GM.MTReuse mtyp', id')
           _ -> return (transResDef, mtyp, id')
      trMReuseType mtyp c = case mtyp of
         GM.MTInterface -> return $ GM.MRInterface c
         GM.MTInstance op -> return $ GM.MRInstance c op
         GM.MTResource -> return $ GM.MRResource c


transComplMod :: ComplMod -> GM.ModuleStatus
transComplMod x = case x of
  CMCompl  -> GM.MSComplete
  CMIncompl  -> GM.MSIncomplete

getTopDefs :: [TopDef] -> [TopDef]
getTopDefs x = x

transConcSpec :: ConcSpec -> Err (GM.MainConcreteSpec Ident)
transConcSpec x = case x of
  ConcSpec id concexp  -> do
    id' <- transIdent id
    (m,mi,mo) <- transConcExp concexp
    return $ GM.MainConcreteSpec id' m mi mo

transConcExp :: ConcExp -> 
       Err (Ident, Maybe (GM.OpenSpec Ident),Maybe (GM.OpenSpec Ident))
transConcExp x = case x of
  ConcExp id transfers  -> do
    id' <- transIdent id
    trs <- mapM transTransfer transfers
    tin <- case [o | Left o <- trs] of
      [o] -> return $ Just o
      []  -> return $ Nothing
      _   -> Bad "ambiguous transfer in"
    tout <- case [o | Right o <- trs] of
      [o] -> return $ Just o
      []  -> return $ Nothing
      _   -> Bad "ambiguous transfer out"
    return (id',tin,tout)

transTransfer :: Transfer -> 
                 Err (Either (GM.OpenSpec Ident)(GM.OpenSpec Ident))
transTransfer x = case x of
  TransferIn open  -> liftM Left  $ transOpen open
  TransferOut open -> liftM Right $ transOpen open

transExtend :: Extend -> Err [(Ident,GM.MInclude Ident)]
transExtend x = case x of
  Ext ids  -> mapM transIncludedExt ids
  NoExt -> return []

transOpens :: Opens -> Err [GM.OpenSpec Ident]
transOpens x = case x of
  NoOpens  -> return []
  OpenIn opens  -> mapM transOpen opens

transOpen :: Open -> Err (GM.OpenSpec Ident)
transOpen x = case x of
  OName id     -> liftM   (GM.OSimple GM.OQNormal) $ transIdent id
  OQualQO q id -> liftM2  GM.OSimple (transQualOpen q) (transIdent id)
  OQual q id m -> liftM3  GM.OQualif  (transQualOpen q) (transIdent id) (transIdent m)

transQualOpen :: QualOpen -> Err GM.OpenQualif
transQualOpen x = case x of
  QOCompl  -> return GM.OQNormal
  QOInterface  -> return GM.OQInterface
  QOIncompl  -> return GM.OQIncomplete

transIncluded :: Included -> Err (Ident,[Ident])
transIncluded x = case x of
  IAll i        -> liftM (flip (curry id) []) $ transIdent i
  ISome  i ids  -> liftM2 (curry id) (transIdent i) (mapM transIdent ids)
  IMinus i ids  -> liftM2 (curry id) (transIdent i) (mapM transIdent ids) ----

transIncludedExt :: Included -> Err (Ident, GM.MInclude Ident)
transIncludedExt x = case x of
  IAll i       -> liftM2 (,) (transIdent i) (return GM.MIAll)
  ISome  i ids -> liftM2 (,) (transIdent i) (liftM GM.MIOnly   $ mapM transIdent ids) 
  IMinus i ids -> liftM2 (,) (transIdent i) (liftM GM.MIExcept $ mapM transIdent ids)

--- where no position is saved
nopos :: Int
nopos = -1

buildPosTree :: Ident -> [(Ident,Int)] -> BinTree Ident (String,(Int,Int))
buildPosTree m = buildTree . mkPoss . filter ((>0) . snd) where
  mkPoss cs = case cs of
    (i,p):rest@((_,q):_) -> (i,(name,(p,max p (q-1)))) : mkPoss rest
    (i,p):[]             -> (i,(name,(p,p+100))) : [] --- don't know last line
    _ -> []
  name = prIdent m ++ ".gf" ----

transAbsDef :: TopDef -> Err (Either [(Ident, Int, G.Info)] GO.ModuleOptions)
transAbsDef x = case x of
  DefCat catdefs -> liftM (Left . concat) $ mapM transCatDef catdefs
  DefFun fundefs -> do
    fundefs' <- mapM transFunDef fundefs
    returnl [(fun, nopos, G.AbsFun (yes typ) nope) | (funs,typ) <- fundefs', fun <- funs]
  DefFunData fundefs -> do
    fundefs' <- mapM transFunDef fundefs
    returnl $
      [(cat, nopos, G.AbsCat nope (yes [G.Cn fun])) | (funs,typ) <- fundefs', 
                                       fun <- funs, 
                                       Ok (_,cat) <- [M.valCat typ]
      ] ++
      [(fun, nopos, G.AbsFun (yes typ) (yes G.EData)) | (funs,typ) <- fundefs', fun <- funs]
  DefDef defs  -> do
    defs' <- liftM concat $ mapM getDefsGen defs
    returnl [(c, nopos, G.AbsFun nope pe) | ((c,p),(_,pe)) <- defs']
  DefData ds -> do
    ds' <- mapM transDataDef ds
    returnl $ 
      [(c, nopos, G.AbsCat nope (yes ps)) | (c,ps) <- ds'] ++
      [(f, nopos, G.AbsFun nope (yes G.EData))  | (_,fs) <- ds', tf <- fs, f <- funs tf]
  DefTrans defs  -> do
    defs' <- liftM concat $ mapM getDefsGen defs
    returnl [(c, nopos, G.AbsTrans f) | ((c,p),(_,Yes f)) <- defs']
  DefFlag defs -> liftM (Right . concatModuleOptions) $ mapM transFlagDef defs
  _ -> Bad $ "illegal definition in abstract module:" ++++ printTree x
 where
   -- to get data constructors as terms
   funs t = case t of
     G.Cn f -> [f]
     G.Q _ f -> [f]
     G.QC _ f -> [f]
     _ -> []

returnl :: a -> Err (Either a b)
returnl = return . Left

transFlagDef :: FlagDef -> Err GO.ModuleOptions
transFlagDef x = case x of
  FlagDef f x  -> parseModuleOptions ["--" ++ prPIdent f ++ "=" ++ prPIdent x]
  where
    prPIdent (PIdent (_,c)) = BS.unpack c


-- | Cat definitions can also return some fun defs
--   if it is a list category definition
transCatDef :: CatDef -> Err [(Ident, Int, G.Info)]
transCatDef x = case x of
  SimpleCatDef id ddecls        -> do
    (id',pos) <- getIdentPos id
    liftM (:[]) $ cat id' pos ddecls
  ListCatDef id ddecls          -> listCat id ddecls 0
  ListSizeCatDef id ddecls size -> listCat id ddecls size
 where 
   cat i pos ddecls = do
		       -- i <- transIdent id
		       cont <- liftM concat $ mapM transDDecl ddecls
		       return (i, pos, G.AbsCat (yes cont) nope)
   listCat id ddecls size = do
         (id',pos) <- getIdentPos id
	 let 
           li = mkListId id'
           baseId = mkBaseId id'
           consId = mkConsId id'
	 catd0@(c,p,G.AbsCat (Yes cont0) _) <- cat li pos ddecls
	 let
  	   catd = (c,pos,G.AbsCat (Yes cont0) (Yes [G.Cn baseId,G.Cn consId]))
           cont = [(mkId x i,ty) | (i,(x,ty)) <- zip [0..] cont0]
           xs = map (G.Vr . fst) cont 
           cd = M.mkDecl (M.mkApp (G.Vr id') xs)
	   lc = M.mkApp (G.Vr li) xs
	   niltyp = M.mkProdSimple (cont ++ genericReplicate size cd) lc
	   nilfund = (baseId, nopos, G.AbsFun (yes niltyp) (yes G.EData))
	   constyp = M.mkProdSimple (cont ++ [cd, M.mkDecl lc]) lc
	   consfund = (consId, nopos, G.AbsFun (yes constyp) (yes G.EData))
	 return [catd,nilfund,consfund]
   mkId x i = if isWildIdent x then (varX i) else x

transFunDef :: FunDef -> Err ([Ident], G.Type)
transFunDef x = case x of
  FunDef ids typ  -> liftM2 (,) (mapM transIdent ids) (transExp typ)

transDataDef :: DataDef -> Err (Ident,[G.Term])
transDataDef x = case x of
  DataDef id ds  -> liftM2 (,) (transIdent id) (mapM transData ds) 
 where
   transData d = case d of
     DataId id  -> liftM G.Cn $ transIdent id
     DataQId id0 id  -> liftM2 G.QC (transIdent id0) (transIdent id)

transResDef :: TopDef -> Err (Either [(Ident, Int, G.Info)] GO.ModuleOptions)
transResDef x = case x of
  DefPar pardefs -> do
    pardefs' <- mapM transParDef pardefs
    returnl $ [(p, nopos, G.ResParam (if null pars 
                                  then nope -- abstract param type 
                                  else (yes (pars,Nothing)))) 
                                     | (p,pars) <- pardefs']
           ++ [(f, nopos, G.ResValue (yes (M.mkProdSimple co (G.Cn p),Nothing))) |
                     (p,pars) <- pardefs', (f,co) <- pars]

  DefOper defs -> do
    defs' <- liftM concat $ mapM getDefs defs
    returnl $ 
      concatMap mkOverload [(f, p, G.ResOper pt pe) | ((f,p),(pt,pe)) <- defs']

  DefLintype defs -> do
    defs' <- liftM concat $ mapM getDefs defs
    returnl [(f, p, G.ResOper pt pe) | ((f,p),(pt,pe)) <- defs']

  DefFlag defs -> liftM (Right . concatModuleOptions) $ mapM transFlagDef defs
  _ -> Bad $ "illegal definition form in resource" +++ printTree x
 where
   mkOverload op@(c,p,j) = case j of
     G.ResOper _ (Yes df) -> case M.appForm df of
       (keyw, ts@(_:_)) | isOverloading keyw -> case last ts of
         G.R fs -> 
           [(c,p,G.ResOverload [m | G.Vr m <- ts] [(ty,fu) | (_,(Just ty,fu)) <- fs])]
         _ -> [op]
       _ -> [op]

     -- to enable separare type signature --- not type-checked
     G.ResOper (Yes df) _ -> case M.appForm df of
       (keyw, ts@(_:_)) | isOverloading keyw -> case last ts of
         G.RecType _ -> [] 
         _ -> [op]
       _ -> [op]
     _ -> [(c,p,j)]
   isOverloading keyw = 
     GP.prt keyw == "overload"       -- overload is a "soft keyword"
   isRec t = case t of
     G.R _ -> True
     _ -> False

transParDef :: ParDef -> Err (Ident, [G.Param])
transParDef x = case x of
  ParDefDir id params  -> liftM2 (,) (transIdent id) (mapM transParConstr params)
  ParDefAbs id -> liftM2 (,) (transIdent id) (return [])
  _ -> Bad $ "illegal definition in resource:" ++++ printTree x

transCncDef :: TopDef -> Err (Either [(Ident, Int, G.Info)] GO.ModuleOptions)
transCncDef x = case x of
  DefLincat defs  -> do
    defs' <- liftM concat $ mapM transPrintDef defs
    returnl [(f, nopos, G.CncCat (yes t) nope nope) | (f,t) <- defs']
  DefLindef defs  -> do
    defs' <- liftM concat $ mapM getDefs defs
    returnl [(f, p, G.CncCat pt pe nope) | ((f,p),(pt,pe)) <- defs']
  DefLin defs  -> do
    defs' <- liftM concat $ mapM getDefs defs
    returnl [(f, p, G.CncFun Nothing pe nope) | ((f,p),(_,pe)) <- defs']
  DefPrintCat defs -> do
    defs' <- liftM concat $ mapM transPrintDef defs
    returnl [(f, nopos, G.CncCat nope nope (yes e)) | (f,e) <- defs']    
  DefPrintFun defs -> do
    defs' <- liftM concat $ mapM transPrintDef defs
    returnl [(f, nopos, G.CncFun Nothing nope (yes e)) | (f,e) <- defs']
  DefPrintOld defs -> do  --- a guess, for backward compatibility
    defs' <- liftM concat $ mapM transPrintDef defs
    returnl [(f, nopos, G.CncFun Nothing nope (yes e)) | (f,e) <- defs']    
  DefFlag defs -> liftM (Right . concatModuleOptions) $ mapM transFlagDef defs
  DefPattern defs  -> do
    defs' <- liftM concat $ mapM getDefs defs
    let defs2 = [(f, termInPattern t) | (f,(_,Yes t)) <- defs']
    returnl [(f, p, G.CncFun Nothing (yes t) nope) | ((f,p),t) <- defs2]

  _ -> errIn ("illegal definition in concrete syntax:") $ transResDef x

transPrintDef :: PrintDef -> Err [(Ident,G.Term)]
transPrintDef x = case x of
  PrintDef ids exp  -> do
    (ids,e) <- liftM2 (,) (mapM transName ids) (transExp exp)
    return $ [(i,e) | i <- ids]

getDefsGen :: Def -> Err [((Ident, Int),(G.Perh G.Type, G.Perh G.Term))]
getDefsGen d = case d of
  DDecl ids t -> do
    ids' <- mapM transNamePos ids
    t'   <- transExp t
    return [(i,(yes t', nope)) | i <- ids']
  DDef ids e -> do
    ids' <- mapM transNamePos ids
    e'   <- transExp e
    return [(i,(nope, yes e')) | i <- ids']
  DFull ids t e -> do
    ids' <- mapM transNamePos ids
    t'   <- transExp t
    e'   <- transExp e
    return [(i,(yes t', yes e')) | i <- ids']
  DPatt id patts e  -> do
    id' <- transNamePos id
    ps' <- mapM transPatt patts
    e'  <- transExp e
    return [(id',(nope, yes (G.Eqs [(ps',e')])))]

-- | sometimes you need this special case, e.g. in linearization rules
getDefs :: Def -> Err [((Ident,Int), (G.Perh G.Type, G.Perh G.Term))]
getDefs d = case d of
  DPatt id patts e  -> do
    id' <- transNamePos id
    xs  <- mapM tryMakeVar patts
    e'  <- transExp e
    return [(id',(nope, yes (M.mkAbs xs e')))]
  _ -> getDefsGen d

-- | accepts a pattern that is either a variable or a wild card
tryMakeVar :: Patt -> Err Ident
tryMakeVar p = do
  p' <- transPatt p
  case p' of
    G.PV i -> return i
    G.PW   -> return identW
    _ -> Bad $ "not a legal pattern in lambda binding" +++ GP.prt p'

transExp :: Exp -> Err G.Term
transExp x = case x of
  EIdent id     -> liftM G.Vr $ transIdent id
  EConstr id    -> liftM G.Con $ transIdent id
  ECons id      -> liftM G.Cn $ transIdent id
  EQConstr m c  -> liftM2 G.QC (transIdent m) (transIdent c)
  EQCons m c    -> liftM2 G.Q  (transIdent m) (transIdent c)
  EString str   -> return $ G.K str 
  ESort sort    -> return $ G.Sort $ transSort sort
  EInt n        -> return $ G.EInt n
  EFloat n      -> return $ G.EFloat n
  EMeta         -> return $ G.Meta $ M.int2meta 0
  EEmpty        -> return G.Empty
  -- [ C x_1 ... x_n ] becomes (ListC x_1 ... x_n)
  EList i es    -> do
    i' <- transIdent i
    es' <- mapM transExp (exps2list es)
    return $ foldl G.App (G.Vr (mkListId i')) es'
  EStrings []   -> return G.Empty
  EStrings str  -> return $ foldr1 G.C $ map G.K $ words str
  ERecord defs  -> erecord2term defs
  ETupTyp _ _   -> do
    let tups t = case t of
          ETupTyp x y -> tups x ++ [y] -- right-associative parsing
          _ -> [t]
    es <- mapM transExp $ tups x
    return $ G.RecType $ M.tuple2recordType es
  ETuple tuplecomps  -> do
    es <- mapM transExp [e | TComp e <- tuplecomps]
    return $ G.R $ M.tuple2record es
  EProj exp id  -> liftM2 G.P (transExp exp) (trLabel id)
  EApp exp0 exp  -> liftM2 G.App (transExp exp0) (transExp exp)
  ETable cases  -> liftM (G.T G.TRaw) (transCases cases)
  ETTable exp cases -> 
    liftM2 (\t c -> G.T (G.TTyped t) c) (transExp exp) (transCases cases)
  EVTable exp cases -> 
    liftM2 (\t c -> G.V t c) (transExp exp) (mapM transExp cases)
  ECase exp cases  -> do
    exp' <- transExp exp
    cases' <- transCases cases
    let annot = case exp' of
          G.Typed _ t -> G.TTyped t
          _ -> G.TRaw 
    return $ G.S (G.T annot cases') exp'
  ECTable binds exp  -> liftM2 M.mkCTable (mapM transBind binds) (transExp exp)

  EVariants exps    -> liftM G.FV $ mapM transExp exps
  EPre exp alts     -> liftM2 (curry G.Alts) (transExp exp) (mapM transAltern alts)
  EStrs exps        -> liftM G.Strs $ mapM transExp exps
  ESelect exp0 exp  -> liftM2 G.S (transExp exp0) (transExp exp)
  EExtend exp0 exp  -> liftM2 G.ExtR (transExp exp0) (transExp exp)
  EAbstr binds exp  -> liftM2 M.mkAbs (mapM transBind binds) (transExp exp)
  ETyped exp0 exp   -> liftM2 G.Typed (transExp exp0) (transExp exp)
  EExample exp str  -> liftM2 G.Example (transExp exp) (return str)

  EProd decl exp    -> liftM2 M.mkProdSimple (transDecl decl) (transExp exp)
  ETType exp0 exp   -> liftM2 G.Table (transExp exp0) (transExp exp)
  EConcat exp0 exp  -> liftM2 G.C (transExp exp0) (transExp exp)
  EGlue exp0 exp    -> liftM2 G.Glue (transExp exp0) (transExp exp)
  ELet defs exp  -> do
    exp'  <- transExp exp
    defs0 <- mapM locdef2fields defs
    defs' <- mapM tryLoc $ concat defs0
    return $ M.mkLet defs' exp'
   where
     tryLoc (c,(mty,Just e)) = return (c,(mty,e))
     tryLoc (c,_) = Bad $ "local definition of" +++ GP.prt c +++ "without value"
  ELetb defs exp -> transExp $ ELet defs exp
  EWhere exp defs -> transExp $ ELet defs exp

  EPattType typ -> liftM G.EPattType (transExp typ)
  EPatt patt -> liftM G.EPatt (transPatt patt)

  ELString (LString str) -> return $ G.K (BS.unpack str)  -- use the grammar encoding here
  ELin id -> liftM G.LiT $ transIdent id

  EEqs eqs -> liftM G.Eqs $ mapM transEquation eqs

  _ -> Bad $ "translation not yet defined for" +++ printTree x ----

exps2list :: Exps -> [Exp]
exps2list NilExp = []
exps2list (ConsExp e es) = e : exps2list es

--- this is complicated: should we change Exp or G.Term ?
 
erecord2term :: [LocDef] -> Err G.Term
erecord2term ds = do
  ds' <- mapM locdef2fields ds 
  mkR $ concat ds'
 where
  mkR fs = do 
    fs' <- transF fs
    return $ case fs' of
      Left ts  -> G.RecType ts
      Right ds -> G.R ds
  transF [] = return $ Left [] --- empty record always interpreted as record type
  transF fs@(f:_) = case f of
    (lab,(Just ty,Nothing)) -> mapM tryRT fs >>= return . Left
    _ -> mapM tryR fs >>= return . Right
  tryRT f = case f of
    (lab,(Just ty,Nothing)) -> return (G.ident2label lab,ty)
    _ -> Bad $ "illegal record type field" +++ GP.prt (fst f) --- manifest fields ?!
  tryR f = case f of
    (lab,(mty, Just t)) -> return (G.ident2label lab,(mty,t))
    _ -> Bad $ "illegal record field" +++ GP.prt (fst f)

  
locdef2fields :: LocDef -> Err [(Ident, (Maybe G.Type, Maybe G.Type))]
locdef2fields d = case d of
    LDDecl ids t -> do
      labs <- mapM transIdent ids
      t'   <- transExp t
      return [(lab,(Just t',Nothing)) | lab <- labs]
    LDDef ids e -> do
      labs <- mapM transIdent ids
      e'   <- transExp e
      return [(lab,(Nothing, Just e')) | lab <- labs]
    LDFull ids t e -> do
      labs <- mapM transIdent ids
      t'   <- transExp t
      e'   <- transExp e
      return [(lab,(Just t', Just e')) | lab <- labs]

trLabel :: Label -> Err G.Label
trLabel x = case x of
  LIdent (PIdent (_, s)) -> return $ G.LIdent s
  LVar x                 -> return $ G.LVar $ fromInteger x

transSort :: Sort -> Ident
transSort Sort_Type  = cType
transSort Sort_PType = cPType
transSort Sort_Tok   = cTok
transSort Sort_Str   = cStr
transSort Sort_Strs  = cStrs


{-
--- no more used 7/1/2006 AR
transPatts :: Patt -> Err [G.Patt]
transPatts p = case p of
  PDisj p1 p2 -> liftM2 (++) (transPatts p1) (transPatts p2)
  PC id patts -> liftM (map (G.PC id) . combinations) $ mapM transPatts patts
  PQC q id patts -> liftM (map (G.PP q id) . combinations) (mapM transPatts patts)

  PR pattasss -> do
    let (lss,ps) = unzip [(ls,p) | PA ls p <- pattasss]
        ls = map LIdent $ concat lss
    ps0 <- mapM transPatts ps
    let ps' = combinations ps0
    lss' <- mapM trLabel ls
    let rss = map (zip lss') ps'
    return $ map G.PR rss
  PTup pcs -> do
    ps0 <- mapM transPatts [e | PTComp e <- pcs]
    let ps' = combinations ps0
    return $ map (G.PR . M.tuple2recordPatt) ps'
  _ -> liftM singleton $ transPatt p
-}

transPatt :: Patt -> Err G.Patt
transPatt x = case x of
  PW  -> return G.wildPatt
  PV id  -> liftM G.PV $ transIdent id
  PC id patts  -> liftM2 G.PC (transIdent id) (mapM transPatt patts)
  PCon id  -> liftM2 G.PC (transIdent id) (return [])
  PInt n  -> return $ G.PInt n
  PFloat n  -> return $ G.PFloat n
  PStr str  -> return $ G.PString str
  PR pattasss -> do
    let (lss,ps) = unzip [(ls,p) | PA ls p <- pattasss]
        ls = map LIdent $ concat lss
    liftM G.PR $ liftM2 zip (mapM trLabel ls) (mapM transPatt ps)
  PTup pcs -> 
    liftM (G.PR . M.tuple2recordPatt) (mapM transPatt [e | PTComp e <- pcs])
  PQ id0 id  -> liftM3 G.PP (transIdent id0) (transIdent id) (return [])
  PQC id0 id patts  -> 
    liftM3 G.PP (transIdent id0) (transIdent id) (mapM transPatt patts)
  PDisj p1 p2 -> liftM2 G.PAlt (transPatt p1) (transPatt p2)
  PSeq p1 p2  -> liftM2 G.PSeq (transPatt p1) (transPatt p2)
  PRep p      -> liftM  G.PRep (transPatt p)
  PNeg p      -> liftM  G.PNeg (transPatt p)
  PAs x p     -> liftM2 G.PAs  (transIdent x) (transPatt p)
  PChar -> return G.PChar
  PChars s -> return $ G.PChars s
  PMacro c -> liftM G.PMacro $ transIdent c
  PM m c   -> liftM2 G.PM (transIdent m) (transIdent c)

transBind :: Bind -> Err Ident
transBind x = case x of
  BIdent id  -> transIdent id
  BWild  -> return identW

transDecl :: Decl -> Err [G.Decl]
transDecl x = case x of
  DDec binds exp  -> do
    xs   <- mapM transBind binds
    exp' <- transExp exp
    return [(x,exp') | x <- xs]
  DExp exp  -> liftM (return . M.mkDecl) $ transExp exp

transCases :: [Case] -> Err [G.Case]
transCases = mapM transCase

transCase :: Case -> Err G.Case
transCase (Case p exp) = do
  patt <- transPatt p
  exp'  <- transExp exp  
  return (patt,exp')

transEquation :: Equation -> Err G.Equation
transEquation x = case x of
  Equ apatts exp -> liftM2 (,) (mapM transPatt apatts) (transExp exp)

transAltern :: Altern -> Err (G.Term, G.Term)
transAltern x = case x of
  Alt exp0 exp  -> liftM2 (,) (transExp exp0) (transExp exp)

transParConstr :: ParConstr -> Err G.Param
transParConstr x = case x of
  ParConstr id ddecls  -> do
    id' <- transIdent id
    ddecls' <- mapM transDDecl ddecls
    return (id',concat ddecls')

transDDecl :: DDecl -> Err [G.Decl]
transDDecl x = case x of
  DDDec binds exp  -> transDecl $ DDec binds exp
  DDExp exp  ->  transDecl $ DExp exp

-- | to deal with the old format, sort judgements in two modules, forming
-- their names from a given string, e.g. file name or overriding user-given string
transOldGrammar :: Options -> FilePath -> OldGrammar -> Err G.SourceGrammar
transOldGrammar opts name0 x = case x of
  OldGr includes topdefs  -> do --- includes must be collected separately
    let moddefs = sortTopDefs topdefs
    g1 <- transGrammar $ Gr moddefs
    removeLiT g1 --- needed for bw compatibility with an obsolete feature
 where
   sortTopDefs ds = [mkAbs a, mkCnc ops (c ++ r)]
     where 
       ops = map fst ps
       (a,r,c,ps) = foldr srt ([],[],[],[]) ds
   srt d (a,r,c,ps) = case d of
     DefCat catdefs  -> (d:a,r,c,ps)
     DefFun fundefs  -> (d:a,r,c,ps)
     DefFunData fundefs -> (d:a,r,c,ps)
     DefDef defs     -> (d:a,r,c,ps)
     DefData pardefs -> (d:a,r,c,ps)
     DefPar pardefs  -> (a,d:r,c,ps)
     DefOper defs    -> (a,d:r,c,ps)
     DefLintype defs -> (a,d:r,c,ps)
     DefLincat defs  -> (a,r,d:c,ps)
     DefLindef defs  -> (a,r,d:c,ps)
     DefLin defs     -> (a,r,d:c,ps)
     DefPattern defs -> (a,r,d:c,ps)
     DefFlag defs    -> (a,r,d:c,ps) --- a guess
     DefPrintCat printdefs  -> (a,r,d:c,ps)
     DefPrintFun printdefs  -> (a,r,d:c,ps)
     DefPrintOld printdefs  -> (a,r,d:c,ps)
     -- DefPackage m ds        -> (a,r,c,(m,ds):ps) -- OBSOLETE
     _ -> (a,r,c,ps)
   mkAbs a = MModule q (MTAbstract absName) (MBody ne (OpenIn [])  (topDefs a))
   mkCnc ps r = MModule q (MTConcrete cncName absName) (MBody ne (OpenIn []) (topDefs r))
   topDefs t = t
   ne = NoExt
   q = CMCompl

   name = maybe name0 (++ ".gf") $ moduleFlag optName opts
   absName = identPI $ maybe topic id $ moduleFlag optAbsName opts
   resName = identPI $ maybe ("Res" ++ lang) id $ moduleFlag optResName opts
   cncName = identPI $ maybe lang id $ moduleFlag optCncName opts

   identPI s = PIdent ((0,0),BS.pack s)

   (beg,rest) = span (/='.') name
   (topic,lang) = case rest of -- to avoid overwriting old files
     ".gf" -> ("Abs" ++ beg,"Cnc" ++ beg)
     ".cf" -> ("Abs" ++ beg,"Cnc" ++ beg)
     ".ebnf" -> ("Abs" ++ beg,"Cnc" ++ beg)
     []    -> ("Abs" ++ beg,"Cnc" ++ beg)
     _:s   -> (beg, takeWhile (/='.') s)

transInclude :: Include -> Err [FilePath]
transInclude x = Bad "Old GF with includes no more supported in GF 3.0"

newReservedWords :: [String]
newReservedWords =
  words $ "abstract concrete interface incomplete " ++ 
          "instance out open resource reuse transfer union with where"

termInPattern :: G.Term -> G.Term
termInPattern t = M.mkAbs xx $ G.R [(s, (Nothing, toP body))] where
  toP t = case t of
    G.Vr x -> G.P t s
    _ -> M.composSafeOp toP t
  s = G.LIdent (BS.pack "s")
  (xx,body) = abss [] t
  abss xs t = case t of
    G.Abs x b -> abss (x:xs) b
    _ -> (reverse xs,t)

mkListId,mkConsId,mkBaseId  :: Ident -> Ident
mkListId = prefixId (BS.pack "List")
mkConsId = prefixId (BS.pack "Cons")
mkBaseId = prefixId (BS.pack "Base")

prefixId :: BS.ByteString -> Ident -> Ident
prefixId pref id = identC (BS.append pref (ident2bs id))
