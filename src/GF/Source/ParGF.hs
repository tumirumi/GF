{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module GF.Source.ParGF where
import GF.Source.AbsGF
import GF.Source.LexGF
import GF.Source.ErrM
#if __GLASGOW_HASKELL__ >= 503
import Data.Array
#else
import Array
#endif
#if __GLASGOW_HASKELL__ >= 503
import GHC.Exts
#else
import GlaExts
#endif

-- parser produced by Happy Version 1.16

newtype HappyAbsSyn  = HappyAbsSyn (() -> ())
happyIn7 :: (Integer) -> (HappyAbsSyn )
happyIn7 x = unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn ) -> (Integer)
happyOut7 x = unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: (String) -> (HappyAbsSyn )
happyIn8 x = unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn ) -> (String)
happyOut8 x = unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: (Double) -> (HappyAbsSyn )
happyIn9 x = unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn ) -> (Double)
happyOut9 x = unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: (LString) -> (HappyAbsSyn )
happyIn10 x = unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn ) -> (LString)
happyOut10 x = unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: (PIdent) -> (HappyAbsSyn )
happyIn11 x = unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn ) -> (PIdent)
happyOut11 x = unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: (Grammar) -> (HappyAbsSyn )
happyIn12 x = unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn ) -> (Grammar)
happyOut12 x = unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: ([ModDef]) -> (HappyAbsSyn )
happyIn13 x = unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn ) -> ([ModDef])
happyOut13 x = unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: (ModDef) -> (HappyAbsSyn )
happyIn14 x = unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn ) -> (ModDef)
happyOut14 x = unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: (ConcSpec) -> (HappyAbsSyn )
happyIn15 x = unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn ) -> (ConcSpec)
happyOut15 x = unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: ([ConcSpec]) -> (HappyAbsSyn )
happyIn16 x = unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> ([ConcSpec])
happyOut16 x = unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: (ConcExp) -> (HappyAbsSyn )
happyIn17 x = unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> (ConcExp)
happyOut17 x = unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: ([Transfer]) -> (HappyAbsSyn )
happyIn18 x = unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> ([Transfer])
happyOut18 x = unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (Transfer) -> (HappyAbsSyn )
happyIn19 x = unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> (Transfer)
happyOut19 x = unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (ModType) -> (HappyAbsSyn )
happyIn20 x = unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> (ModType)
happyOut20 x = unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: (ModBody) -> (HappyAbsSyn )
happyIn21 x = unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> (ModBody)
happyOut21 x = unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: ([TopDef]) -> (HappyAbsSyn )
happyIn22 x = unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> ([TopDef])
happyOut22 x = unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: (Extend) -> (HappyAbsSyn )
happyIn23 x = unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (Extend)
happyOut23 x = unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: ([Open]) -> (HappyAbsSyn )
happyIn24 x = unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> ([Open])
happyOut24 x = unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (Opens) -> (HappyAbsSyn )
happyIn25 x = unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (Opens)
happyOut25 x = unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (Open) -> (HappyAbsSyn )
happyIn26 x = unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (Open)
happyOut26 x = unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (ComplMod) -> (HappyAbsSyn )
happyIn27 x = unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> (ComplMod)
happyOut27 x = unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (QualOpen) -> (HappyAbsSyn )
happyIn28 x = unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (QualOpen)
happyOut28 x = unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: ([Included]) -> (HappyAbsSyn )
happyIn29 x = unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> ([Included])
happyOut29 x = unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (Included) -> (HappyAbsSyn )
happyIn30 x = unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (Included)
happyOut30 x = unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (Def) -> (HappyAbsSyn )
happyIn31 x = unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (Def)
happyOut31 x = unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (TopDef) -> (HappyAbsSyn )
happyIn32 x = unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (TopDef)
happyOut32 x = unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (CatDef) -> (HappyAbsSyn )
happyIn33 x = unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (CatDef)
happyOut33 x = unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (FunDef) -> (HappyAbsSyn )
happyIn34 x = unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (FunDef)
happyOut34 x = unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (DataDef) -> (HappyAbsSyn )
happyIn35 x = unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (DataDef)
happyOut35 x = unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (DataConstr) -> (HappyAbsSyn )
happyIn36 x = unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (DataConstr)
happyOut36 x = unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: ([DataConstr]) -> (HappyAbsSyn )
happyIn37 x = unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> ([DataConstr])
happyOut37 x = unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (ParDef) -> (HappyAbsSyn )
happyIn38 x = unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (ParDef)
happyOut38 x = unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (ParConstr) -> (HappyAbsSyn )
happyIn39 x = unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (ParConstr)
happyOut39 x = unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (PrintDef) -> (HappyAbsSyn )
happyIn40 x = unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (PrintDef)
happyOut40 x = unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (FlagDef) -> (HappyAbsSyn )
happyIn41 x = unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (FlagDef)
happyOut41 x = unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: ([Def]) -> (HappyAbsSyn )
happyIn42 x = unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> ([Def])
happyOut42 x = unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: ([CatDef]) -> (HappyAbsSyn )
happyIn43 x = unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> ([CatDef])
happyOut43 x = unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: ([FunDef]) -> (HappyAbsSyn )
happyIn44 x = unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> ([FunDef])
happyOut44 x = unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: ([DataDef]) -> (HappyAbsSyn )
happyIn45 x = unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> ([DataDef])
happyOut45 x = unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: ([ParDef]) -> (HappyAbsSyn )
happyIn46 x = unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> ([ParDef])
happyOut46 x = unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: ([PrintDef]) -> (HappyAbsSyn )
happyIn47 x = unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> ([PrintDef])
happyOut47 x = unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: ([FlagDef]) -> (HappyAbsSyn )
happyIn48 x = unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> ([FlagDef])
happyOut48 x = unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: ([ParConstr]) -> (HappyAbsSyn )
happyIn49 x = unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> ([ParConstr])
happyOut49 x = unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: ([PIdent]) -> (HappyAbsSyn )
happyIn50 x = unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> ([PIdent])
happyOut50 x = unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Name) -> (HappyAbsSyn )
happyIn51 x = unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Name)
happyOut51 x = unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: ([Name]) -> (HappyAbsSyn )
happyIn52 x = unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> ([Name])
happyOut52 x = unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (LocDef) -> (HappyAbsSyn )
happyIn53 x = unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (LocDef)
happyOut53 x = unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: ([LocDef]) -> (HappyAbsSyn )
happyIn54 x = unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> ([LocDef])
happyOut54 x = unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Exp) -> (HappyAbsSyn )
happyIn55 x = unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Exp)
happyOut55 x = unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Exp) -> (HappyAbsSyn )
happyIn56 x = unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Exp)
happyOut56 x = unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Exp) -> (HappyAbsSyn )
happyIn57 x = unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Exp)
happyOut57 x = unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (Exp) -> (HappyAbsSyn )
happyIn58 x = unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (Exp)
happyOut58 x = unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Exp) -> (HappyAbsSyn )
happyIn59 x = unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (Exp)
happyOut59 x = unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (Exp) -> (HappyAbsSyn )
happyIn60 x = unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (Exp)
happyOut60 x = unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (Exp) -> (HappyAbsSyn )
happyIn61 x = unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (Exp)
happyOut61 x = unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: ([Exp]) -> (HappyAbsSyn )
happyIn62 x = unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> ([Exp])
happyOut62 x = unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (Exps) -> (HappyAbsSyn )
happyIn63 x = unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (Exps)
happyOut63 x = unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: (Patt) -> (HappyAbsSyn )
happyIn64 x = unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> (Patt)
happyOut64 x = unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Patt) -> (HappyAbsSyn )
happyIn65 x = unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Patt)
happyOut65 x = unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: (Patt) -> (HappyAbsSyn )
happyIn66 x = unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> (Patt)
happyOut66 x = unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (PattAss) -> (HappyAbsSyn )
happyIn67 x = unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (PattAss)
happyOut67 x = unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: (Label) -> (HappyAbsSyn )
happyIn68 x = unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> (Label)
happyOut68 x = unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (Sort) -> (HappyAbsSyn )
happyIn69 x = unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> (Sort)
happyOut69 x = unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: ([PattAss]) -> (HappyAbsSyn )
happyIn70 x = unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> ([PattAss])
happyOut70 x = unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: ([Patt]) -> (HappyAbsSyn )
happyIn71 x = unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> ([Patt])
happyOut71 x = unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: (Bind) -> (HappyAbsSyn )
happyIn72 x = unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn ) -> (Bind)
happyOut72 x = unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: ([Bind]) -> (HappyAbsSyn )
happyIn73 x = unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn ) -> ([Bind])
happyOut73 x = unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyIn74 :: (Decl) -> (HappyAbsSyn )
happyIn74 x = unsafeCoerce# x
{-# INLINE happyIn74 #-}
happyOut74 :: (HappyAbsSyn ) -> (Decl)
happyOut74 x = unsafeCoerce# x
{-# INLINE happyOut74 #-}
happyIn75 :: (TupleComp) -> (HappyAbsSyn )
happyIn75 x = unsafeCoerce# x
{-# INLINE happyIn75 #-}
happyOut75 :: (HappyAbsSyn ) -> (TupleComp)
happyOut75 x = unsafeCoerce# x
{-# INLINE happyOut75 #-}
happyIn76 :: (PattTupleComp) -> (HappyAbsSyn )
happyIn76 x = unsafeCoerce# x
{-# INLINE happyIn76 #-}
happyOut76 :: (HappyAbsSyn ) -> (PattTupleComp)
happyOut76 x = unsafeCoerce# x
{-# INLINE happyOut76 #-}
happyIn77 :: ([TupleComp]) -> (HappyAbsSyn )
happyIn77 x = unsafeCoerce# x
{-# INLINE happyIn77 #-}
happyOut77 :: (HappyAbsSyn ) -> ([TupleComp])
happyOut77 x = unsafeCoerce# x
{-# INLINE happyOut77 #-}
happyIn78 :: ([PattTupleComp]) -> (HappyAbsSyn )
happyIn78 x = unsafeCoerce# x
{-# INLINE happyIn78 #-}
happyOut78 :: (HappyAbsSyn ) -> ([PattTupleComp])
happyOut78 x = unsafeCoerce# x
{-# INLINE happyOut78 #-}
happyIn79 :: (Case) -> (HappyAbsSyn )
happyIn79 x = unsafeCoerce# x
{-# INLINE happyIn79 #-}
happyOut79 :: (HappyAbsSyn ) -> (Case)
happyOut79 x = unsafeCoerce# x
{-# INLINE happyOut79 #-}
happyIn80 :: ([Case]) -> (HappyAbsSyn )
happyIn80 x = unsafeCoerce# x
{-# INLINE happyIn80 #-}
happyOut80 :: (HappyAbsSyn ) -> ([Case])
happyOut80 x = unsafeCoerce# x
{-# INLINE happyOut80 #-}
happyIn81 :: (Equation) -> (HappyAbsSyn )
happyIn81 x = unsafeCoerce# x
{-# INLINE happyIn81 #-}
happyOut81 :: (HappyAbsSyn ) -> (Equation)
happyOut81 x = unsafeCoerce# x
{-# INLINE happyOut81 #-}
happyIn82 :: ([Equation]) -> (HappyAbsSyn )
happyIn82 x = unsafeCoerce# x
{-# INLINE happyIn82 #-}
happyOut82 :: (HappyAbsSyn ) -> ([Equation])
happyOut82 x = unsafeCoerce# x
{-# INLINE happyOut82 #-}
happyIn83 :: (Altern) -> (HappyAbsSyn )
happyIn83 x = unsafeCoerce# x
{-# INLINE happyIn83 #-}
happyOut83 :: (HappyAbsSyn ) -> (Altern)
happyOut83 x = unsafeCoerce# x
{-# INLINE happyOut83 #-}
happyIn84 :: ([Altern]) -> (HappyAbsSyn )
happyIn84 x = unsafeCoerce# x
{-# INLINE happyIn84 #-}
happyOut84 :: (HappyAbsSyn ) -> ([Altern])
happyOut84 x = unsafeCoerce# x
{-# INLINE happyOut84 #-}
happyIn85 :: (DDecl) -> (HappyAbsSyn )
happyIn85 x = unsafeCoerce# x
{-# INLINE happyIn85 #-}
happyOut85 :: (HappyAbsSyn ) -> (DDecl)
happyOut85 x = unsafeCoerce# x
{-# INLINE happyOut85 #-}
happyIn86 :: ([DDecl]) -> (HappyAbsSyn )
happyIn86 x = unsafeCoerce# x
{-# INLINE happyIn86 #-}
happyOut86 :: (HappyAbsSyn ) -> ([DDecl])
happyOut86 x = unsafeCoerce# x
{-# INLINE happyOut86 #-}
happyIn87 :: (OldGrammar) -> (HappyAbsSyn )
happyIn87 x = unsafeCoerce# x
{-# INLINE happyIn87 #-}
happyOut87 :: (HappyAbsSyn ) -> (OldGrammar)
happyOut87 x = unsafeCoerce# x
{-# INLINE happyOut87 #-}
happyIn88 :: (Include) -> (HappyAbsSyn )
happyIn88 x = unsafeCoerce# x
{-# INLINE happyIn88 #-}
happyOut88 :: (HappyAbsSyn ) -> (Include)
happyOut88 x = unsafeCoerce# x
{-# INLINE happyOut88 #-}
happyIn89 :: (FileName) -> (HappyAbsSyn )
happyIn89 x = unsafeCoerce# x
{-# INLINE happyIn89 #-}
happyOut89 :: (HappyAbsSyn ) -> (FileName)
happyOut89 x = unsafeCoerce# x
{-# INLINE happyOut89 #-}
happyIn90 :: ([FileName]) -> (HappyAbsSyn )
happyIn90 x = unsafeCoerce# x
{-# INLINE happyIn90 #-}
happyOut90 :: (HappyAbsSyn ) -> ([FileName])
happyOut90 x = unsafeCoerce# x
{-# INLINE happyOut90 #-}
happyInTok :: Token -> (HappyAbsSyn )
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> Token
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x77\x02\xe2\x04\x48\x01\xbe\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf5\x04\x00\x00\xfa\x04\xd6\x01\xa6\x00\xec\x04\xac\x04\xe7\x04\x00\x00\xf0\x04\xa5\x04\x58\x00\x40\x00\xa5\x04\x00\x00\x48\x01\x21\x00\xa5\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x48\x01\x00\x00\xf3\x04\x5d\x03\x15\x00\xc1\x03\xf2\x04\xf1\x04\x2a\x03\xe3\x04\x00\x00\x00\x00\x00\x00\x00\x00\x9f\x04\x00\x00\x80\x00\x01\x00\xed\x01\x9e\x04\x00\x00\x93\x04\x11\x00\xdb\x04\xe0\x04\xd4\x04\x83\x04\x83\x04\x83\x04\x83\x04\x83\x04\x83\x04\x00\x00\x00\x00\x80\x00\xd1\x04\x00\x00\x80\x00\x80\x00\x80\x00\x74\x08\x48\x01\x00\x00\xc8\x01\xad\x03\xf8\x00\x82\x04\xa8\x00\xa8\x00\x00\x00\x00\x00\x00\x00\xc3\x04\x00\x00\x81\x04\xad\x03\x7f\x04\x00\x00\xad\x03\x73\x04\x00\x00\x08\x03\xaf\x04\xea\x01\xc1\x04\x7d\x04\x6e\x04\x37\x00\xd3\x03\x65\x04\x00\x00\x00\x00\xaa\x04\xa0\x04\xf6\xff\x00\x00\x99\x04\x9b\x04\x8a\x04\xf7\x00\x8e\x04\xd5\x02\x00\x00\x76\x01\x96\x04\x92\x04\xb3\x02\x63\x02\x94\x04\xa8\x00\x7e\x01\xa8\x00\x7e\x01\x7e\x01\x7e\x01\xa8\x00\x8c\x04\x7c\x04\x1e\x00\x80\x02\x00\x00\x3a\x04\x00\x00\x00\x00\x30\x04\x34\x04\x00\x00\x5e\x02\x5e\x02\x5e\x02\x00\x00\x5e\x02\xd6\x02\x00\x00\x00\x00\x00\x00\x00\x00\x34\x04\x34\x04\x7a\x04\xa8\x00\x00\x00\x2b\x02\x71\x04\x00\x00\x25\x04\x00\x00\x00\x00\xa8\x00\xa8\x00\x57\x04\xa8\x00\xf6\xff\x6c\x04\xd3\x03\x68\x04\x67\x04\x63\x04\x00\x00\x62\x04\xa8\x00\x10\x04\xa8\x00\xa8\x00\x51\x04\x4f\x04\xa0\x01\x40\x04\x00\x00\x6f\x01\x4d\x04\x41\x04\xd3\x03\x43\x04\xcb\x01\x4c\x02\x4c\x04\x4a\x04\x42\x04\xef\x03\x3f\x04\x3c\x04\x38\x04\x2b\x04\x12\x00\xa8\x02\x2c\x04\x24\x04\xad\x03\xa8\x00\x1c\x04\x00\x00\x33\x00\xcd\x03\x31\x00\xcd\x03\xcd\x03\x31\x00\x31\x00\x31\x00\x31\x00\x31\x00\xcd\x03\xcd\x03\x31\x00\x64\x00\xcd\x03\x31\x00\x31\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x17\x04\x00\x00\x00\x00\xdc\x03\xdb\x03\x00\x00\xfe\xff\x00\x04\xe8\x03\xe4\x00\x00\x00\xc7\x03\xf9\x03\x05\x00\xae\x03\xae\x03\xae\x03\xae\x03\x19\x00\x00\x00\x00\x00\xf8\x03\x00\x00\x7f\x03\x93\x00\xa3\x03\x00\x00\xf3\x03\xf2\x03\x00\x00\xd6\x03\xf0\x03\x31\x00\x31\x00\x00\x00\xee\x03\xec\x03\x00\x00\xdf\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xde\x03\x00\x00\xce\x03\xd2\x03\xca\x03\x00\x00\x00\x00\x4d\x01\xc9\x03\x00\x00\x00\x00\x00\x00\xc4\x03\x00\x00\x75\x03\x00\x00\xb5\x03\xbc\x03\x00\x00\x58\x03\x58\x03\x58\x03\xa8\x00\x00\x00\x6b\x03\xd3\x03\x00\x00\xa8\x00\xa8\x00\x00\x00\x00\x00\x6b\x03\x58\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x03\x00\x00\x6b\x03\xba\x03\x00\x00\x00\x00\x00\x00\x8c\x03\x00\x00\xd3\x03\xa8\x00\x00\x00\x58\x03\x00\x00\x00\x00\xa8\x00\xa6\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xab\x03\x00\x00\xa5\x03\x00\x00\x9f\x03\x00\x00\xf1\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9b\x03\x00\x00\x00\x00\xa8\x00\xa8\x00\x00\x00\x00\x00\x14\x01\x00\x00\x87\x03\x9c\x03\x93\x03\x00\x00\x00\x00\xd3\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x09\x02\x4a\x03\x4a\x03\x4a\x03\x4a\x03\xa8\x00\x4a\x03\x89\x03\x39\x03\x14\x00\x00\x00\x00\x00\xa8\x00\x1a\x00\x1a\x00\x00\x00\x81\x03\xa8\x00\xa8\x00\x85\x03\x1a\x00\x00\x00\x80\x03\xa7\x00\x00\x00\x00\x00\x00\x00\x7b\x03\x00\x00\x20\x03\xff\xff\x20\x03\x6d\x03\xff\xff\x1f\x03\x60\x03\x65\x03\x1a\x03\x1a\x03\x5a\x03\x35\x03\x57\x03\x00\x00\x12\x03\x55\x03\x00\x00\x0a\x03\x00\x00\x00\x00\xff\xff\x00\x00\xa8\x00\x52\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x03\x00\x00\x23\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x42\x03\x40\x03\x00\x00\x41\x03\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\xb4\x01\x00\x00\x00\x00\xa8\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3f\x03\x3a\x03\xee\x02\xee\x02\xe6\x04\xee\x02\xee\x02\x09\x02\xa8\x00\x00\x00\x00\x00\x0d\x02\x17\x03\xff\xff\xc4\x04\xff\xff\x00\x00\x00\x00\x33\x03\x37\x03\xe2\x02\x00\x00\x00\x00\x00\x00\x27\x03\x14\x03\xe1\x02\x00\x00\x00\x00\x00\x00\x1c\x03\x1e\x03\x00\x00\x00\x00\xa8\x00\xd0\x02\x19\x03\x16\x03\x00\x00\x00\x00\x15\x03\x00\x00\xdc\x02\x10\x03\x13\x03\x0d\x03\x00\x00\xbe\x02\xbe\x02\xfc\x02\xa2\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x03\x80\x04\x00\x00\x00\x00\xc7\x02\x10\x01\xff\xff\xff\xff\x09\x03\xfa\x02\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x3b\x02\x0e\x01\x77\x01\x4f\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x45\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb1\x01\x4c\x05\x0c\x02\xf9\x02\x00\x00\x31\x05\xb3\x00\xf8\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3b\x08\x00\x00\x00\x00\x06\x03\x81\x01\xfc\x01\x00\x00\x00\x00\xb3\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xec\x02\x06\x00\x00\x00\xd1\x02\xf6\x02\x00\x00\x00\x00\xbc\x00\x00\x00\x00\x00\x00\x00\xea\x02\xe9\x02\xe6\x02\xe4\x02\xe0\x02\xde\x02\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x0a\x00\x08\x00\x02\x00\xca\x02\xcf\x05\x00\x00\x00\x00\x2a\x04\x27\x08\xd9\x02\xab\x05\x04\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x00\x78\x04\xda\x02\x00\x00\x69\x04\xc5\x02\x00\x00\xf0\x02\x00\x00\x00\x00\x00\x00\x00\x00\x7b\x01\xc9\x02\x49\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb1\x02\x00\x00\x00\x00\x00\x00\x00\x00\x9b\x02\x00\x00\x00\x00\xf0\x07\x72\x08\xdc\x07\x07\x02\x32\x01\xe2\x00\xb9\x07\x00\x00\x00\x00\x16\x00\x92\x03\x00\x00\x4a\x01\x00\x00\x00\x00\xc8\x02\x26\x01\x00\x00\x46\x02\x46\x02\x46\x02\x00\x00\x46\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\xc2\x02\x00\x00\xa5\x07\x00\x00\x5c\x02\x00\x00\x00\x00\xb7\x02\x00\x00\x00\x00\x14\x05\x91\x07\x00\x00\x6e\x07\x0d\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x07\xfa\x00\x46\x07\x23\x07\x00\x00\x00\x00\xdd\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb6\x02\x00\x00\x00\x00\x00\x00\x00\x00\xdd\x00\x00\x00\x00\x00\x00\x00\x48\x04\x97\x05\x00\x00\x00\x00\xfd\x01\x73\x03\x84\x05\x98\x01\xa2\x02\x33\x05\x6a\x04\xda\x04\xb8\x04\x97\x04\xb5\x02\x37\x01\x5c\x04\x11\x03\xa7\x02\x49\x04\xfa\x03\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x77\x04\x00\x00\x00\x00\x00\x00\x00\x00\x98\x02\x00\x00\x00\x00\xa3\x02\x2d\x02\x95\x02\x93\x02\x3d\x01\x00\x00\x00\x00\x00\x00\x00\x00\xb0\x00\x00\x00\x89\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x02\xf0\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x39\x02\x00\x00\x00\x00\x70\x02\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x04\x5b\x01\x0b\x01\x0f\x07\x00\x00\x66\x02\x2d\x01\x00\x00\x83\x05\x04\x04\x00\x00\x00\x00\x97\x00\xa0\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x04\x00\x00\x61\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x35\x00\xfb\x06\x00\x00\xf6\x03\x00\x00\x00\x00\xd8\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc4\x06\xb0\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x02\x10\x00\x2f\x00\x0a\x01\x4e\x02\x69\x01\x3e\x02\x8d\x06\x4d\x02\x00\x00\x1b\x01\xe6\x00\x00\x00\x00\x00\x79\x06\x17\x00\x4e\x01\x00\x00\x00\x00\x65\x06\x42\x06\x00\x00\xbf\x03\x00\x00\x00\x00\xa3\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5c\x01\x85\x02\xd7\x00\x00\x00\x82\x02\x92\x00\x00\x00\x00\x00\x1f\x02\x1b\x00\x00\x00\x00\x00\x00\x00\x0f\x02\x00\x00\x00\x00\x00\x00\xef\x01\x00\x00\x00\x00\xba\x00\x00\x00\x2e\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x96\x01\x00\x00\x00\x00\x00\x00\x00\x00\xc3\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x38\x05\x00\x00\x2f\x00\x00\x00\x00\x00\xe6\x03\x1a\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc6\x01\xb2\x01\x8f\x01\x97\x01\x95\x00\x2f\x00\xf7\x05\x00\x00\x00\x00\x00\x00\x70\x01\x62\x02\x78\x01\x51\x02\x00\x00\x00\x00\x00\x00\x00\x00\xb8\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\x05\x65\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x96\x00\x9a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x86\x02\xa9\x01\x00\x00\x25\x01\x00\x00\x00\x00\x00\x00\x00\x00\x7b\x00\x6b\x00\x00\x00\x00\x00\x34\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8c\x00\x0f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xf5\xff\xcd\xff\x00\xff\x00\x00\x00\x00\xfb\xff\x78\xff\x79\xff\x77\xff\x6c\xff\x7d\xff\x68\xff\x5c\xff\x57\xff\x49\xff\x4a\xff\x00\x00\x55\xff\x7a\xff\x00\x00\x80\xff\x1d\xff\x00\x00\x00\x00\x76\xff\x16\xff\x1d\xff\x00\x00\x28\xff\x26\xff\x25\xff\x27\xff\x29\xff\x00\x00\x74\xff\x00\x00\x00\x00\x80\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfa\xff\xf9\xff\xf8\xff\xf7\xff\x00\x00\xd9\xff\x00\x00\x00\x00\x00\x00\x00\x00\xcc\xff\x00\x00\xcd\xff\xf4\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf3\xff\xfe\xfe\xfd\xfe\x00\x00\xff\xfe\x00\x00\x00\x00\x00\x00\x01\xff\x48\xff\x7d\xff\x00\x00\x80\xff\x00\x00\x00\x00\x48\xff\x00\x00\x3b\xff\x39\xff\x3a\xff\x3e\xff\x5e\xff\x24\xff\x00\x00\x00\x00\x43\xff\x13\xff\x00\x00\x3f\xff\x00\x00\x89\xff\x00\x00\x7f\xff\x00\x00\x80\xff\x00\x00\x0c\xff\x00\x00\x5b\xff\x1f\xff\x1c\xff\x00\x00\x1d\xff\x1e\xff\x18\xff\x15\xff\x00\x00\x00\x00\x00\x00\x45\xff\x75\xff\x7d\xff\x00\x00\x00\x00\x00\x00\x89\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x67\xff\x00\x00\x00\x00\x5f\xff\x80\xff\x2b\xff\x6b\xff\x00\x00\x80\xff\x50\xff\x59\xff\x5a\xff\x58\xff\x54\xff\x57\xff\x49\xff\x56\xff\x51\xff\x71\xff\x7c\xff\x00\x00\x00\x00\x7d\xff\x00\x00\x6d\xff\x45\xff\x00\x00\x72\xff\x00\x00\x7b\xff\x70\xff\x16\xff\x00\x00\x00\x00\x00\x00\x1d\xff\x00\x00\x21\xff\x00\x00\x0b\xff\x00\x00\x4b\xff\x00\x00\x00\x00\x80\xff\x00\x00\x00\x00\x5d\xff\x41\xff\x3e\xff\x30\xff\x2d\xff\x17\xff\x12\xff\x00\x00\x00\x00\x00\x00\x00\x00\x89\xff\x00\x00\x23\xff\x00\x00\x00\x00\x00\x00\x47\xff\x00\x00\x00\x00\x89\xff\x00\x00\x0f\xff\x00\x00\x00\x00\x48\xff\x00\x00\xd8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfc\xfe\xfb\xfe\xfa\xfe\xf8\xfe\xf9\xfe\x00\x00\xe6\xff\xe5\xff\x00\x00\x00\x00\xe7\xff\xc8\xff\x00\x00\x00\x00\xc5\xff\xf1\xff\xd2\xff\xe0\xff\xc7\xff\x00\x00\xc8\xff\x00\x00\x00\x00\x00\x00\xf7\xfe\x87\xff\x00\x00\xac\xff\x85\xff\x00\x00\x00\x00\xb9\xff\x00\x00\x00\x00\xb0\xff\x85\xff\x00\x00\x00\x00\x00\x00\xae\xff\x9e\xff\x00\x00\xb8\xff\x00\x00\xb7\xff\xaf\xff\xb5\xff\xb6\xff\xb4\xff\x00\x00\xbd\xff\x00\x00\x00\x00\x00\x00\xb1\xff\xbb\xff\x89\xff\x00\x00\xbc\xff\xba\xff\x03\xff\x00\x00\xbe\xff\x00\x00\x62\xff\x00\x00\x00\x00\x66\xff\x00\x00\x00\x00\x00\x00\x00\x00\x35\xff\x00\x00\x00\x00\x60\xff\x48\xff\x08\xff\x3c\xff\x38\xff\x24\xff\x00\x00\x3d\xff\x36\xff\x42\xff\x31\xff\x37\xff\x13\xff\x33\xff\x00\x00\x83\xff\x82\xff\x7e\xff\x4e\xff\x00\x00\x4c\xff\x0c\xff\x00\x00\x20\xff\x00\x00\x1b\xff\x53\xff\x00\x00\x00\x00\x18\xff\x14\xff\x69\xff\x73\xff\x44\xff\x00\x00\x6f\xff\x00\x00\x88\xff\x00\x00\x2a\xff\x89\xff\x4d\xff\x6a\xff\x1a\xff\x6e\xff\x52\xff\x00\x00\x0d\xff\x0a\xff\x00\x00\x00\x00\x40\xff\x11\xff\x2c\xff\x22\xff\x00\x00\x07\xff\x00\x00\x46\xff\x32\xff\x3c\xff\x10\xff\x2e\xff\x2f\xff\x0e\xff\x65\xff\x64\xff\x03\xff\x98\xff\xaa\xff\x94\xff\xa3\xff\x8e\xff\x00\x00\x00\x00\x96\xff\x00\x00\x92\xff\x8c\xff\xb2\xff\xb3\xff\x00\x00\x00\x00\x90\xff\xab\xff\x00\x00\x00\x00\x00\x00\x00\x00\x9a\xff\xd0\xff\x00\x00\xcb\xff\xe3\xff\xe4\xff\xda\xff\xc7\xff\xdb\xff\xc8\xff\xd5\xff\xd7\xff\x00\x00\xd5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd4\xff\xd9\xff\x00\x00\xdf\xff\xc6\xff\x00\x00\xca\xff\xc9\xff\x00\x00\x99\xff\x00\x00\xc2\xff\xc1\xff\x86\xff\x8f\xff\x84\xff\x9c\xff\x03\xff\x8b\xff\xa0\xff\x00\x00\x91\xff\xd9\xff\x95\xff\xa7\xff\x9b\xff\x8d\xff\xa5\xff\xa2\xff\xa6\xff\x00\x00\x93\xff\x04\xff\x02\xff\x1d\xff\x97\xff\x00\x00\x34\xff\x61\xff\x08\xff\x00\x00\x81\xff\x4f\xff\x63\xff\x09\xff\x06\xff\xa9\xff\x00\x00\xa3\xff\x00\x00\x00\x00\x00\x00\x8c\xff\x9d\xff\x00\x00\xc0\xff\xe2\xff\x00\x00\xd2\xff\xd5\xff\x00\x00\xd5\xff\xd1\xff\xc4\xff\x00\x00\x00\x00\xef\xff\xc3\xff\xd3\xff\xe1\xff\xdd\xff\x00\x00\x00\x00\xcf\xff\xbf\xff\x8a\xff\x00\x00\x00\x00\xa4\xff\xa1\xff\x00\x00\x00\x00\x00\x00\x00\x00\xad\xff\x9f\xff\x00\x00\xd9\xff\xd2\xff\x00\x00\xee\xff\x00\x00\xf2\xff\xef\xff\x00\x00\x00\x00\x00\x00\xce\xff\x05\xff\xa8\xff\xde\xff\xd9\xff\xeb\xff\xf0\xff\xed\xff\xec\xff\x00\x00\xdc\xff\xea\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\xe8\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x03\x00\x01\x00\x01\x00\x05\x00\x01\x00\x04\x00\x01\x00\x04\x00\x01\x00\x04\x00\x01\x00\x04\x00\x01\x00\x04\x00\x0a\x00\x04\x00\x04\x00\x1c\x00\x04\x00\x04\x00\x03\x00\x04\x00\x05\x00\x03\x00\x05\x00\x04\x00\x04\x00\x0a\x00\x0b\x00\x05\x00\x04\x00\x0e\x00\x0f\x00\x13\x00\x11\x00\x12\x00\x0b\x00\x14\x00\x19\x00\x16\x00\x17\x00\x1a\x00\x0b\x00\x1a\x00\x1b\x00\x1c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x24\x00\x00\x00\x01\x00\x02\x00\x3a\x00\x04\x00\x19\x00\x1d\x00\x0b\x00\x1c\x00\x0b\x00\x2e\x00\x0c\x00\x43\x00\x31\x00\x2c\x00\x2d\x00\x0e\x00\x2b\x00\x49\x00\x52\x00\x00\x00\x01\x00\x02\x00\x0c\x00\x04\x00\x41\x00\x42\x00\x52\x00\x52\x00\x4d\x00\x3d\x00\x52\x00\x54\x00\x52\x00\x53\x00\x52\x00\x53\x00\x52\x00\x03\x00\x52\x00\x05\x00\x52\x00\x30\x00\x4e\x00\x4f\x00\x50\x00\x0b\x00\x52\x00\x54\x00\x52\x00\x52\x00\x10\x00\x11\x00\x12\x00\x52\x00\x52\x00\x3e\x00\x39\x00\x0b\x00\x52\x00\x19\x00\x52\x00\x52\x00\x1c\x00\x40\x00\x0b\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x4e\x00\x26\x00\x4a\x00\x4b\x00\x29\x00\x39\x00\x52\x00\x2c\x00\x52\x00\x4f\x00\x2f\x00\x04\x00\x40\x00\x0f\x00\x27\x00\x34\x00\x0d\x00\x0e\x00\x4f\x00\x04\x00\x2d\x00\x52\x00\x4a\x00\x4b\x00\x02\x00\x04\x00\x3f\x00\x40\x00\x04\x00\x07\x00\x04\x00\x44\x00\x45\x00\x1e\x00\x13\x00\x00\x00\x01\x00\x02\x00\x4b\x00\x04\x00\x0f\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x03\x00\x12\x00\x05\x00\x04\x00\x09\x00\x00\x00\x01\x00\x02\x00\x0b\x00\x04\x00\x20\x00\x52\x00\x04\x00\x10\x00\x11\x00\x12\x00\x15\x00\x16\x00\x2b\x00\x04\x00\x2a\x00\x1a\x00\x19\x00\x2b\x00\x07\x00\x04\x00\x41\x00\x42\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x13\x00\x26\x00\x4f\x00\x14\x00\x29\x00\x52\x00\x3c\x00\x2c\x00\x2b\x00\x3f\x00\x2f\x00\x31\x00\x39\x00\x33\x00\x04\x00\x34\x00\x00\x00\x01\x00\x02\x00\x40\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x3f\x00\x40\x00\x39\x00\x04\x00\x2b\x00\x44\x00\x45\x00\x17\x00\x0b\x00\x40\x00\x0d\x00\x4c\x00\x4b\x00\x41\x00\x42\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x03\x00\x3c\x00\x05\x00\x04\x00\x3f\x00\x00\x00\x01\x00\x02\x00\x0b\x00\x04\x00\x0e\x00\x20\x00\x10\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x04\x00\x04\x00\x2a\x00\x19\x00\x30\x00\x31\x00\x32\x00\x07\x00\x39\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x40\x00\x26\x00\x04\x00\x3e\x00\x29\x00\x14\x00\x0f\x00\x2c\x00\x2b\x00\x1c\x00\x2f\x00\x2e\x00\x2f\x00\x04\x00\x17\x00\x34\x00\x00\x00\x01\x00\x02\x00\x26\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x3f\x00\x40\x00\x39\x00\x1f\x00\x04\x00\x44\x00\x45\x00\x19\x00\x2f\x00\x40\x00\x04\x00\x27\x00\x4b\x00\x39\x00\x3a\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x03\x00\x3c\x00\x05\x00\x04\x00\x02\x00\x13\x00\x2b\x00\x04\x00\x0b\x00\x2e\x00\x2f\x00\x1f\x00\x0a\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x27\x00\x04\x00\x04\x00\x19\x00\x30\x00\x31\x00\x32\x00\x00\x00\x39\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x04\x00\x26\x00\x21\x00\x3e\x00\x29\x00\x16\x00\x17\x00\x2c\x00\x2b\x00\x28\x00\x2f\x00\x2e\x00\x2f\x00\x2c\x00\x2d\x00\x34\x00\x07\x00\x0f\x00\x04\x00\x0a\x00\x03\x00\x12\x00\x05\x00\x04\x00\x04\x00\x17\x00\x3f\x00\x40\x00\x0b\x00\x14\x00\x22\x00\x44\x00\x45\x00\x10\x00\x11\x00\x12\x00\x19\x00\x29\x00\x4b\x00\x39\x00\x3a\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x04\x00\x04\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x26\x00\x05\x00\x2b\x00\x29\x00\x19\x00\x2e\x00\x2f\x00\x0b\x00\x2b\x00\x04\x00\x0e\x00\x2e\x00\x2f\x00\x11\x00\x12\x00\x0a\x00\x14\x00\x04\x00\x04\x00\x03\x00\x15\x00\x05\x00\x22\x00\x1b\x00\x1c\x00\x3f\x00\x40\x00\x0b\x00\x0c\x00\x29\x00\x44\x00\x45\x00\x10\x00\x11\x00\x12\x00\x50\x00\x51\x00\x4b\x00\x04\x00\x03\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x06\x00\x0f\x00\x0b\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x0f\x00\x05\x00\x2b\x00\x29\x00\x08\x00\x2e\x00\x2f\x00\x0b\x00\x17\x00\x1d\x00\x1e\x00\x4f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x02\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x07\x00\x52\x00\x04\x00\x04\x00\x04\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x29\x00\x04\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x01\x00\x05\x00\x02\x00\x04\x00\x21\x00\x25\x00\x06\x00\x0b\x00\x28\x00\x04\x00\x1a\x00\x28\x00\x10\x00\x11\x00\x12\x00\x2c\x00\x2d\x00\x0f\x00\x32\x00\x33\x00\x24\x00\x39\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x42\x00\x05\x00\x04\x00\x29\x00\x21\x00\x47\x00\x39\x00\x0b\x00\x30\x00\x31\x00\x32\x00\x28\x00\x10\x00\x11\x00\x12\x00\x2c\x00\x2d\x00\x05\x00\x06\x00\x04\x00\x16\x00\x17\x00\x3e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x04\x00\x04\x00\x04\x00\x4f\x00\x29\x00\x04\x00\x0a\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x11\x00\x05\x00\x13\x00\x04\x00\x04\x00\x04\x00\x1b\x00\x0b\x00\x04\x00\x1d\x00\x1e\x00\x0a\x00\x10\x00\x11\x00\x12\x00\x0e\x00\x25\x00\x11\x00\x04\x00\x13\x00\x30\x00\x31\x00\x2b\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x3e\x00\x05\x00\x04\x00\x29\x00\x4f\x00\x04\x00\x04\x00\x0b\x00\x30\x00\x04\x00\x08\x00\x09\x00\x10\x00\x11\x00\x12\x00\x11\x00\x38\x00\x13\x00\x11\x00\x04\x00\x13\x00\x04\x00\x3e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x2e\x00\x04\x00\x04\x00\x31\x00\x29\x00\x12\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x0f\x00\x05\x00\x04\x00\x04\x00\x04\x00\x04\x00\x1b\x00\x0b\x00\x17\x00\x08\x00\x09\x00\x1a\x00\x10\x00\x11\x00\x12\x00\x04\x00\x25\x00\x00\x00\x04\x00\x01\x00\x30\x00\x31\x00\x2b\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x3e\x00\x05\x00\x01\x00\x29\x00\x04\x00\x0d\x00\x09\x00\x0b\x00\x30\x00\x04\x00\x19\x00\x04\x00\x10\x00\x11\x00\x12\x00\x04\x00\x38\x00\x04\x00\x15\x00\x16\x00\x04\x00\x04\x00\x3e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x04\x00\x0f\x00\x04\x00\x04\x00\x29\x00\x03\x00\x06\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x05\x00\x05\x00\x47\x00\x06\x00\x52\x00\x04\x00\x02\x00\x0b\x00\x01\x00\x04\x00\x3a\x00\x03\x00\x10\x00\x11\x00\x12\x00\x06\x00\x06\x00\x04\x00\x4e\x00\x01\x00\x30\x00\x31\x00\x06\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x3e\x00\x05\x00\x09\x00\x29\x00\x21\x00\x52\x00\x52\x00\x0b\x00\x30\x00\x31\x00\x01\x00\x28\x00\x10\x00\x11\x00\x12\x00\x2c\x00\x2d\x00\x0c\x00\x52\x00\x07\x00\x03\x00\x02\x00\x3e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x0f\x00\x0e\x00\x3a\x00\x2f\x00\x29\x00\x02\x00\x0f\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x03\x00\x52\x00\x05\x00\x09\x00\x4d\x00\x03\x00\x0a\x00\x05\x00\x0b\x00\x2f\x00\x0d\x00\x0c\x00\x02\x00\x0b\x00\x11\x00\x12\x00\x0b\x00\x52\x00\x10\x00\x11\x00\x12\x00\x03\x00\x52\x00\x52\x00\x1b\x00\x1c\x00\x30\x00\x31\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x03\x00\x3e\x00\x05\x00\x0a\x00\x29\x00\x02\x00\x08\x00\x0a\x00\x0b\x00\x52\x00\x03\x00\x0c\x00\x1b\x00\x1c\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x25\x00\x26\x00\x1b\x00\x1c\x00\x52\x00\x01\x00\x2b\x00\x04\x00\x00\x00\x01\x00\x02\x00\x04\x00\x04\x00\x1e\x00\x4e\x00\x4f\x00\x50\x00\x04\x00\x52\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x03\x00\x06\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0b\x00\x13\x00\x0d\x00\x2f\x00\x02\x00\x52\x00\x11\x00\x12\x00\x04\x00\x0c\x00\x30\x00\x04\x00\x03\x00\x01\x00\x05\x00\x52\x00\x1b\x00\x1c\x00\x01\x00\x01\x00\x0b\x00\x4e\x00\x4f\x00\x50\x00\x3e\x00\x52\x00\x11\x00\x12\x00\x02\x00\x07\x00\x03\x00\x18\x00\x05\x00\x39\x00\x3a\x00\x3b\x00\x1b\x00\x1c\x00\x0b\x00\x01\x00\x0a\x00\x02\x00\x23\x00\x30\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2c\x00\x2d\x00\x01\x00\x1b\x00\x1c\x00\x02\x00\x3e\x00\x02\x00\x01\x00\x01\x00\x52\x00\x00\x00\x01\x00\x02\x00\x01\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x04\x00\x52\x00\x52\x00\x3a\x00\x09\x00\x03\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x48\x00\x00\x00\x01\x00\x02\x00\x25\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x18\x00\x52\x00\x39\x00\x39\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x23\x00\x07\x00\x52\x00\x04\x00\x4e\x00\x4f\x00\x50\x00\x3e\x00\x52\x00\x2c\x00\x2d\x00\x04\x00\x43\x00\x00\x00\x01\x00\x02\x00\x01\x00\x04\x00\x39\x00\x3a\x00\x3b\x00\x4c\x00\x4d\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x10\x00\x04\x00\x01\x00\x48\x00\x49\x00\x01\x00\x52\x00\x3e\x00\x39\x00\x3a\x00\x3b\x00\x04\x00\x43\x00\x00\x00\x01\x00\x02\x00\x01\x00\x04\x00\x04\x00\x02\x00\x0c\x00\x4c\x00\x4d\x00\x48\x00\x49\x00\x13\x00\x2b\x00\x16\x00\x0a\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x0e\x00\x04\x00\x0e\x00\x04\x00\x18\x00\x52\x00\x39\x00\x3a\x00\x3b\x00\x04\x00\x04\x00\x01\x00\x00\x00\x01\x00\x02\x00\x23\x00\x04\x00\x04\x00\x03\x00\x08\x00\x1a\x00\x48\x00\x49\x00\x18\x00\x2c\x00\x2d\x00\x52\x00\x00\x00\x01\x00\x02\x00\x04\x00\x04\x00\x0c\x00\x4e\x00\x23\x00\x06\x00\x39\x00\x3a\x00\x3b\x00\x04\x00\x0e\x00\x52\x00\x10\x00\x2c\x00\x2d\x00\x0e\x00\x21\x00\x52\x00\x16\x00\x17\x00\x03\x00\x48\x00\x49\x00\x28\x00\x39\x00\x3a\x00\x3b\x00\x2c\x00\x2d\x00\x04\x00\x07\x00\x0c\x00\x04\x00\x06\x00\x13\x00\x39\x00\x45\x00\x07\x00\x47\x00\x39\x00\x3a\x00\x3b\x00\x0a\x00\x04\x00\x27\x00\x08\x00\x29\x00\x2a\x00\x2b\x00\x2f\x00\x2d\x00\x45\x00\x18\x00\x47\x00\x39\x00\x3a\x00\x3b\x00\x0a\x00\x35\x00\x36\x00\x37\x00\x38\x00\x0a\x00\x23\x00\x3b\x00\x04\x00\x3d\x00\x3e\x00\x3f\x00\x52\x00\x41\x00\x01\x00\x2c\x00\x2d\x00\x52\x00\x46\x00\x47\x00\x04\x00\x27\x00\x4a\x00\x29\x00\x2a\x00\x2b\x00\x4f\x00\x2d\x00\x18\x00\x0e\x00\x01\x00\x52\x00\x52\x00\x52\x00\x02\x00\x35\x00\x36\x00\x37\x00\x38\x00\x23\x00\x01\x00\x3b\x00\x04\x00\x3d\x00\x3e\x00\x3f\x00\x02\x00\x41\x00\x2c\x00\x2d\x00\x03\x00\x54\x00\x46\x00\x47\x00\x04\x00\x27\x00\x4a\x00\x29\x00\x2a\x00\x2b\x00\x52\x00\x2d\x00\x18\x00\x54\x00\x03\x00\x03\x00\x03\x00\x52\x00\x08\x00\x35\x00\x36\x00\x37\x00\x38\x00\x23\x00\x17\x00\x3b\x00\x54\x00\x3d\x00\x3e\x00\x3f\x00\x18\x00\x41\x00\x2c\x00\x2d\x00\x0e\x00\x14\x00\x46\x00\x47\x00\x4e\x00\x27\x00\x4a\x00\x29\x00\x2a\x00\x2b\x00\x30\x00\x2d\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x35\x00\x36\x00\x37\x00\x38\x00\xff\xff\xff\xff\x3b\x00\xff\xff\x3d\x00\x3e\x00\x3f\x00\xff\xff\x41\x00\xff\xff\xff\xff\xff\xff\xff\xff\x46\x00\x47\x00\xff\xff\xff\xff\x4a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\x23\x00\x43\x00\x44\x00\xff\xff\x46\x00\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\x2d\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x44\x00\x3e\x00\x46\x00\xff\xff\x41\x00\x42\x00\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\xff\xff\x3e\x00\xff\xff\xff\xff\x41\x00\x42\x00\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x18\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2c\x00\x2d\x00\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x3e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x43\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x27\x00\xff\xff\x29\x00\x2a\x00\x2b\x00\xff\xff\x2d\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\xff\xff\x36\x00\x35\x00\x36\x00\x37\x00\x38\x00\xff\xff\xff\xff\x3b\x00\x3e\x00\x3d\x00\x3e\x00\x3f\x00\xff\xff\x41\x00\xff\xff\xff\xff\xff\xff\xff\xff\x46\x00\x47\x00\xff\xff\xff\xff\x4a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\xd6\xff\x42\x00\x42\x00\x86\x01\x42\x00\x43\x00\x42\x00\x43\x00\x42\x00\x43\x00\x42\x00\x43\x00\x42\x00\x43\x00\x8c\x01\x43\x00\x68\x00\x6d\x00\x83\x01\x1a\x01\x58\x00\x96\x00\x59\x00\x64\x00\xac\x01\x87\x00\xf7\x00\x97\x00\x5a\x00\x86\x01\x5f\x00\x28\x01\x3e\xff\x08\x02\x5b\x00\x5c\x00\xfd\x00\x29\x01\xcc\x00\x3e\xff\x3e\xff\x1b\x01\x1e\x01\x3e\xff\x5d\x00\x5e\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\xba\x01\x52\x00\x53\x00\x54\x00\xd6\xff\x55\x00\x6c\x00\x8a\x00\xfd\x00\x6d\x00\x1e\x01\x35\x00\x03\x02\xf2\x00\x36\x00\x01\x01\xa6\x01\x84\x00\xd7\x01\xf3\x00\x2f\x00\x52\x00\x53\x00\x54\x00\x74\x00\x55\x00\x69\x00\x42\x01\x2f\x00\x2f\x00\x8d\x01\x88\x00\xde\x00\xff\xff\x44\x00\xf6\x00\x44\x00\x45\x00\xdf\x00\x15\x00\xe0\x00\x16\x00\xe2\x00\xb7\x01\x06\x00\x2c\x00\x2d\x00\x17\x00\x2f\x00\xf6\xff\x2f\x00\x2f\x00\x18\x00\x19\x00\x1a\x00\x2f\x00\x2f\x00\x12\x00\xa7\x00\xfd\x00\x2f\x00\x1b\x00\x2f\x00\x2f\x00\x6d\x00\xa8\x00\x00\x02\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\xb8\x01\x22\x00\xa9\x00\x59\x01\x23\x00\xa7\x00\x2f\x00\x24\x00\x2f\x00\x2c\x00\x78\x00\x68\x00\xa8\x00\x01\x02\x04\x01\x26\x00\x47\x00\x48\x00\x2c\x00\x83\x01\x05\x01\x2f\x00\xa9\x00\xaa\x00\x80\x01\x5f\x00\x27\x00\x28\x00\xa8\x01\x81\x01\x5f\x00\x29\x00\x2a\x00\x49\x00\x09\x02\x52\x00\x53\x00\x54\x00\x2b\x00\x55\x00\xf7\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x15\x00\xf6\x01\x16\x00\x5f\x00\x7e\x00\x52\x00\x53\x00\x54\x00\x17\x00\x55\x00\xa9\x01\x2f\x00\x68\x00\x18\x00\x19\x00\x1a\x00\x7f\x00\x80\x00\x95\x01\x83\x01\xe2\x01\x81\x00\x1b\x00\xbd\x00\x38\x00\xbc\x00\x69\x00\xa3\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\xcf\x01\x22\x00\x2c\x00\x33\x00\x23\x00\x2f\x00\xbe\x00\x24\x00\x4e\x01\x5f\x01\x25\x00\x9e\x01\xa7\x00\x9f\x01\xec\x00\x26\x00\x52\x00\x53\x00\x54\x00\xbc\x01\x55\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x27\x00\x28\x00\xa7\x00\xa8\x01\xbd\x00\x29\x00\x2a\x00\x99\x01\x91\x01\x81\x01\x92\x01\x82\x00\x2b\x00\x69\x00\x6a\x00\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x15\x00\xbe\x00\x16\x00\x5f\x00\xbf\x00\x52\x00\x53\x00\x54\x00\x17\x00\x55\x00\x9f\x00\xa9\x01\xa0\x00\x18\x00\x19\x00\x1a\x00\x52\x00\x53\x00\x54\x00\xb5\x01\xb3\x00\xaa\x01\x1b\x00\x0b\x00\x0c\x00\x8c\x00\x32\x00\xa7\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x26\x01\x22\x00\x06\x01\x12\x00\x23\x00\x33\x00\x24\x01\x24\x00\x60\x00\x17\x01\x78\x00\x61\x00\x3a\x01\x5f\x00\x25\x01\x26\x00\x52\x00\x53\x00\x54\x00\xb6\x01\x55\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x27\x00\x28\x00\xa7\x00\x07\x01\x06\x01\x29\x00\x2a\x00\xcc\x00\x07\x02\x40\x01\x83\x01\xac\x01\x2b\x00\xb4\x00\x67\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x15\x00\x08\x02\x16\x00\x51\x01\x71\x01\x84\x01\x60\x00\xf7\x00\x17\x00\x61\x00\x4f\x01\x07\x01\x97\x00\x18\x00\x19\x00\x1a\x00\x52\x00\x53\x00\x54\x00\x08\x01\xb3\x00\xec\x00\x1b\x00\x0b\x00\x0c\x00\x8d\x00\xe9\x01\x64\x01\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x12\x01\x22\x00\xff\x00\x12\x00\x23\x00\x9b\x01\x89\x01\x24\x00\x60\x00\xa5\x01\x25\x00\x61\x00\x79\x00\x01\x01\x02\x01\x26\x00\x1f\xff\x24\x01\x5f\x00\x1f\xff\x15\x00\xde\x01\x4f\x00\xed\x01\x5f\x00\x25\x01\x27\x00\x28\x00\x17\x00\x85\x00\x13\x01\x29\x00\x2a\x00\x18\x00\x19\x00\x1a\x00\xcc\x00\xb1\x01\x2b\x00\xb4\x00\x68\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\xe3\x01\x12\x01\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x58\x00\x22\x00\x59\x00\x60\x00\x23\x00\xcc\x00\x61\x00\xac\x00\x5a\x00\x60\x00\xfd\x01\x28\x01\x61\x00\x62\x00\x5b\x00\x5c\x00\xfe\x01\x29\x01\x78\x00\xe5\x01\x87\x00\x9c\x01\xba\x01\x13\x01\x5d\x00\x5e\x00\x27\x00\x28\x00\x17\x00\xc6\x01\x14\x01\x29\x00\x2a\x00\x50\x00\x19\x00\x1a\x00\x2f\x00\x30\x00\x2b\x00\xb2\x01\xca\x00\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x32\x01\xc9\x01\xcb\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x15\x00\x24\x01\x4f\x00\x60\x00\x23\x00\x19\xff\x61\x00\x79\x00\x17\x00\x25\x01\xb3\x01\xe6\x01\xcc\x01\x18\x00\x19\x00\x1a\x00\x52\x00\x53\x00\x54\x00\xb0\x00\x55\x00\x06\x00\x2c\x00\x2d\x00\xb1\x00\x2f\x00\xd0\x01\xf7\x00\x96\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x97\x00\x52\x00\x53\x00\x54\x00\x23\x00\x55\x00\x1a\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x87\x00\x71\x00\xba\x01\xe0\x01\x72\x00\xff\x00\x3c\x00\xe1\x01\x17\x00\x3d\x00\xf7\x00\x1b\x01\x78\x01\x50\x00\x19\x00\x1a\x00\x01\x01\x02\x01\xd3\x01\x3e\x00\x3f\x00\x1c\x01\x33\x01\xd8\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x87\x00\x40\x00\x4f\x00\xec\x00\x23\x00\xff\x00\x41\x00\x56\x00\x17\x00\x0b\x00\x0c\x00\x8e\x00\x79\x01\x50\x00\x19\x00\x1a\x00\x01\x01\x02\x01\x36\x00\x37\x00\xb0\x01\x88\x01\x89\x01\x12\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x31\x01\x5f\x00\xb2\x01\xbb\x01\x23\x00\x83\x01\x97\x00\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x15\x00\xdb\x01\x4f\x00\x97\x01\x5c\x01\x83\x01\x96\x00\x0f\x01\x17\x00\x65\x01\xb3\x01\xb4\x01\x97\x00\x18\x00\x19\x00\x1a\x00\x98\x00\xae\x01\xdd\x01\x6c\x01\x97\x01\x0b\x00\x82\x00\x11\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x87\x00\x12\x00\x4f\x00\x83\x01\x23\x00\x6e\x01\x83\x01\xf0\x01\x17\x00\x9b\x00\x7e\x01\xf1\x01\xff\x01\x50\x00\x19\x00\x1a\x00\x96\x01\x4a\x01\x97\x01\x9a\x01\x86\x01\x97\x01\x87\x01\x12\x00\x06\x00\x07\x00\x08\x00\x09\x00\x98\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x35\x00\x5f\x00\x8a\x01\x36\x00\x23\x00\x8e\x01\xfe\x00\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x15\x00\x24\x01\x4f\x00\x09\x01\x2c\x01\x48\x01\xf0\x01\x0f\x01\x17\x00\x25\x01\xf1\x01\xf2\x01\x26\x01\x18\x00\x19\x00\x1a\x00\x4d\x01\x10\x01\x50\x01\xb2\x00\xab\x00\x0b\x00\x64\x00\x11\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x87\x00\x12\x00\x4f\x00\xba\x00\x23\x00\xc4\x00\x3a\x00\x7e\x00\x17\x00\x9b\x00\xe3\x00\xcc\x00\xe4\x00\x50\x00\x19\x00\x1a\x00\xe5\x00\x9c\x00\xe6\x00\x7f\x00\x80\x00\xe7\x00\xe8\x00\x12\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x39\x00\x49\x00\x67\x00\x70\x00\x23\x00\xfd\x01\x0b\x02\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x15\x00\x05\x02\x4f\x00\x06\x02\x0c\x02\x2f\x00\xf4\x01\xf6\x01\x17\x00\xf5\x01\xf7\x00\x90\x01\xef\x01\x18\x00\x19\x00\x1a\x00\xf9\x01\xfa\x01\xfb\x01\x06\x00\xec\x01\x0b\x00\xb1\x00\xed\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x4e\x00\x12\x00\x4f\x00\xf0\x01\x23\x00\xff\x00\x2f\x00\x2f\x00\x17\x00\x0b\x00\x64\x00\xda\x01\x00\x01\x50\x00\x19\x00\x1a\x00\x01\x01\x02\x01\xdb\x01\x2f\x00\xe8\x01\xe9\x01\x71\x01\x12\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\xc8\x01\xc9\x01\x90\x01\xcb\x01\x23\x00\xce\x01\xcc\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x58\x00\x2f\x00\x59\x00\xd2\x01\xd3\x01\x15\x00\xd5\x01\x4f\x00\x5a\x00\xd6\x01\xba\x00\xd7\x01\x94\x01\x17\x00\x5b\x00\x5c\x00\x95\x01\x2f\x00\x18\x00\x19\x00\x1a\x00\x99\x01\x2f\x00\x2f\x00\x5d\x00\x5e\x00\x0b\x00\x82\x00\x16\x01\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x58\x00\x12\x00\x59\x00\x8c\x01\x23\x00\xa2\x01\xa0\x01\x7c\x01\x5a\x00\x2f\x00\xae\x01\xa5\x01\x0f\x01\x17\x01\x5b\x00\x5c\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\xbe\x01\x18\x01\x19\x01\x5d\x00\x5e\x00\x2f\x00\xbf\x01\x11\x01\xc3\x01\x52\x00\x53\x00\x54\x00\x53\x01\xb3\x00\xc0\x01\x06\x00\x2c\x00\x2d\x00\x54\x01\x2f\x00\x06\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x58\x00\x55\x01\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4b\x00\x5a\x00\x56\x01\xba\x00\x5b\x01\x5c\x01\x2f\x00\x5b\x00\x5c\x00\x6b\x01\x6c\x01\x85\x00\xf7\x00\x58\x00\x6e\x01\x59\x00\x2f\x00\x5d\x00\x5e\x00\x70\x01\x72\x01\x5a\x00\x06\x00\x2c\x00\x2d\x00\x12\x00\x2f\x00\x5b\x00\x5c\x00\x73\x01\x74\x01\x58\x00\xf8\x00\x59\x00\xb4\x00\xb5\x00\x5e\x01\x5d\x00\x5e\x00\x5a\x00\x75\x01\x7c\x01\x76\x01\xa0\x01\x4c\x00\x5b\x00\x5c\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\xfa\x00\xfb\x00\x77\x01\x5d\x00\x5e\x00\x78\x01\x12\x00\x7b\x01\x7d\x01\x7e\x01\x2f\x00\x52\x00\x53\x00\x54\x00\x83\x01\xb3\x00\x06\x00\x2c\x00\x2d\x00\xf7\x00\x2f\x00\x2f\x00\x90\x01\x8e\x01\xec\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x5f\x00\x52\x00\x53\x00\x54\x00\x93\x01\xb3\x00\x06\x00\x2c\x00\x2d\x00\xf8\x00\x2f\x00\xf4\x00\xf5\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x60\x01\x11\x00\xf9\x00\xf6\x00\x2f\x00\x1f\x01\x06\x00\x2c\x00\x2d\x00\x12\x00\x2f\x00\xfa\x00\xfb\x00\x22\x01\x13\x00\x52\x00\x53\x00\x54\x00\x23\x01\xc5\x00\xb4\x00\xb5\x00\xc6\x00\x61\x01\xc4\x01\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x60\x01\x11\x00\xa0\x00\x2a\x01\x2b\x01\xc7\x00\x57\x01\x2c\x01\x2f\x00\x12\x00\xb4\x00\xb5\x00\xc6\x00\x2e\x01\x13\x00\x52\x00\x53\x00\x54\x00\x2f\x01\xb3\x00\xf7\x00\x30\x01\x33\x01\x61\x01\x62\x01\xc7\x00\x69\x01\x35\x01\x60\x00\x37\x01\x36\x01\x61\x00\x79\x00\x52\x00\x53\x00\x54\x00\x38\x01\xb3\x00\x84\x00\xf7\x00\xf8\x00\x2f\x00\xb4\x00\xb5\x00\xc6\x00\x3d\x01\x3e\x01\x3f\x01\x52\x00\x53\x00\x54\x00\xfd\x00\xb3\x00\xf7\x00\x42\x01\x40\x01\x45\x01\xc7\x00\xc8\x00\xf8\x00\xfa\x00\xfb\x00\x2f\x00\x52\x00\x53\x00\x54\x00\xec\x00\xb3\x00\x4a\x01\x06\x00\x05\x01\x4d\x01\xb4\x00\xb5\x00\xc6\x00\x03\x02\xed\x00\x2f\x00\xee\x00\xfa\x00\xfb\x00\x84\x00\xff\x00\x2f\x00\xef\x00\xf0\x00\x8b\x00\xc7\x00\x20\x01\x0d\x01\xb4\x00\xb5\x00\xb6\x00\x01\x01\x02\x01\x95\x00\x9a\x00\x9e\x00\xf7\x00\x9b\x00\xa1\x00\xa7\x00\xb7\x00\xa3\x00\x5d\x01\xb4\x00\xb5\x00\xb6\x00\xa2\x00\xfc\x01\xce\x00\xa5\x00\xcf\x00\xd0\x00\xd1\x00\xae\x00\xd2\x00\xb7\x00\xf8\x00\xb8\x00\xb4\x00\xb5\x00\xbb\x00\xa6\x00\xd3\x00\xd4\x00\xd5\x00\xd6\x00\x97\x00\x0a\x01\xd7\x00\xf7\x00\xd8\x00\xd9\x00\xda\x00\x2f\x00\xdb\x00\xaf\x00\xfa\x00\xfb\x00\x2f\x00\xdc\x00\xdd\x00\xdd\x01\xce\x00\xde\x00\xcf\x00\xd0\x00\xd1\x00\x2c\x00\xd2\x00\xf8\x00\xc1\x00\xe2\x00\x2f\x00\x2f\x00\x2f\x00\xea\x00\xd3\x00\xd4\x00\xd5\x00\xd6\x00\x0b\x01\x42\x00\xd7\x00\xf7\x00\xd8\x00\xd9\x00\xda\x00\xeb\x00\xdb\x00\xfa\x00\xfb\x00\x4b\x00\xff\xff\xdc\x00\xdd\x00\xe5\x01\xce\x00\xde\x00\xcf\x00\xd0\x00\xd1\x00\x2f\x00\xd2\x00\xf8\x00\xff\xff\x51\x00\x52\x00\x66\x00\x2f\x00\x7b\x00\xd3\x00\xd4\x00\xd5\x00\xd6\x00\x0c\x01\x7c\x00\xd7\x00\xff\xff\xd8\x00\xd9\x00\xda\x00\x7d\x00\xdb\x00\xfa\x00\xfb\x00\x84\x00\x85\x00\xdc\x00\xdd\x00\x06\x00\xce\x00\xde\x00\xcf\x00\xd0\x00\xd1\x00\x32\x00\xd2\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\xd3\x00\xd4\x00\xd5\x00\xd6\x00\x00\x00\x00\x00\xd7\x00\x00\x00\xd8\x00\xd9\x00\xda\x00\x00\x00\xdb\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdc\x00\xdd\x00\x00\x00\x00\x00\xde\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\xf7\x00\x06\x00\x07\x00\x08\x00\x09\x00\x74\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x46\x01\x11\x00\xf8\x00\x06\x00\x07\x00\x08\x00\x09\x00\x74\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x0e\x01\x13\x00\x6e\x00\x00\x00\x47\x01\x00\x00\x00\x00\x00\x00\x00\x00\xfa\x00\xfb\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x6d\x00\x11\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x75\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x6e\x00\x12\x00\x6f\x00\x00\x00\x69\x00\xc6\x01\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x75\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\xf7\x00\x00\x00\x12\x00\x00\x00\x00\x00\x69\x00\x76\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\xf8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x15\x01\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\xfa\x00\xfb\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc2\x00\x11\x00\x63\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc2\x00\x11\x00\x1f\x01\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc2\x00\x11\x00\xc3\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc2\x00\x11\x00\xcb\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xea\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xe1\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc3\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xce\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xa2\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xa3\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xa7\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xaf\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc0\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc1\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x56\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x58\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x66\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x38\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x39\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x3b\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x43\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x45\x01\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x4b\x01\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x8b\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x8f\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x93\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\xc1\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x75\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x66\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xce\x00\x00\x00\xcf\x00\xd0\x00\xd1\x00\x00\x00\xd2\x00\x0b\x00\x0c\x00\x90\x00\x91\x00\x92\x00\x00\x00\x11\x00\xd3\x00\xd4\x00\xd5\x00\xd6\x00\x00\x00\x00\x00\xd7\x00\x12\x00\xd8\x00\xd9\x00\xda\x00\x00\x00\xdb\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdc\x00\xdd\x00\x00\x00\x00\x00\xde\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (4, 264) [
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108),
	(109 , happyReduce_109),
	(110 , happyReduce_110),
	(111 , happyReduce_111),
	(112 , happyReduce_112),
	(113 , happyReduce_113),
	(114 , happyReduce_114),
	(115 , happyReduce_115),
	(116 , happyReduce_116),
	(117 , happyReduce_117),
	(118 , happyReduce_118),
	(119 , happyReduce_119),
	(120 , happyReduce_120),
	(121 , happyReduce_121),
	(122 , happyReduce_122),
	(123 , happyReduce_123),
	(124 , happyReduce_124),
	(125 , happyReduce_125),
	(126 , happyReduce_126),
	(127 , happyReduce_127),
	(128 , happyReduce_128),
	(129 , happyReduce_129),
	(130 , happyReduce_130),
	(131 , happyReduce_131),
	(132 , happyReduce_132),
	(133 , happyReduce_133),
	(134 , happyReduce_134),
	(135 , happyReduce_135),
	(136 , happyReduce_136),
	(137 , happyReduce_137),
	(138 , happyReduce_138),
	(139 , happyReduce_139),
	(140 , happyReduce_140),
	(141 , happyReduce_141),
	(142 , happyReduce_142),
	(143 , happyReduce_143),
	(144 , happyReduce_144),
	(145 , happyReduce_145),
	(146 , happyReduce_146),
	(147 , happyReduce_147),
	(148 , happyReduce_148),
	(149 , happyReduce_149),
	(150 , happyReduce_150),
	(151 , happyReduce_151),
	(152 , happyReduce_152),
	(153 , happyReduce_153),
	(154 , happyReduce_154),
	(155 , happyReduce_155),
	(156 , happyReduce_156),
	(157 , happyReduce_157),
	(158 , happyReduce_158),
	(159 , happyReduce_159),
	(160 , happyReduce_160),
	(161 , happyReduce_161),
	(162 , happyReduce_162),
	(163 , happyReduce_163),
	(164 , happyReduce_164),
	(165 , happyReduce_165),
	(166 , happyReduce_166),
	(167 , happyReduce_167),
	(168 , happyReduce_168),
	(169 , happyReduce_169),
	(170 , happyReduce_170),
	(171 , happyReduce_171),
	(172 , happyReduce_172),
	(173 , happyReduce_173),
	(174 , happyReduce_174),
	(175 , happyReduce_175),
	(176 , happyReduce_176),
	(177 , happyReduce_177),
	(178 , happyReduce_178),
	(179 , happyReduce_179),
	(180 , happyReduce_180),
	(181 , happyReduce_181),
	(182 , happyReduce_182),
	(183 , happyReduce_183),
	(184 , happyReduce_184),
	(185 , happyReduce_185),
	(186 , happyReduce_186),
	(187 , happyReduce_187),
	(188 , happyReduce_188),
	(189 , happyReduce_189),
	(190 , happyReduce_190),
	(191 , happyReduce_191),
	(192 , happyReduce_192),
	(193 , happyReduce_193),
	(194 , happyReduce_194),
	(195 , happyReduce_195),
	(196 , happyReduce_196),
	(197 , happyReduce_197),
	(198 , happyReduce_198),
	(199 , happyReduce_199),
	(200 , happyReduce_200),
	(201 , happyReduce_201),
	(202 , happyReduce_202),
	(203 , happyReduce_203),
	(204 , happyReduce_204),
	(205 , happyReduce_205),
	(206 , happyReduce_206),
	(207 , happyReduce_207),
	(208 , happyReduce_208),
	(209 , happyReduce_209),
	(210 , happyReduce_210),
	(211 , happyReduce_211),
	(212 , happyReduce_212),
	(213 , happyReduce_213),
	(214 , happyReduce_214),
	(215 , happyReduce_215),
	(216 , happyReduce_216),
	(217 , happyReduce_217),
	(218 , happyReduce_218),
	(219 , happyReduce_219),
	(220 , happyReduce_220),
	(221 , happyReduce_221),
	(222 , happyReduce_222),
	(223 , happyReduce_223),
	(224 , happyReduce_224),
	(225 , happyReduce_225),
	(226 , happyReduce_226),
	(227 , happyReduce_227),
	(228 , happyReduce_228),
	(229 , happyReduce_229),
	(230 , happyReduce_230),
	(231 , happyReduce_231),
	(232 , happyReduce_232),
	(233 , happyReduce_233),
	(234 , happyReduce_234),
	(235 , happyReduce_235),
	(236 , happyReduce_236),
	(237 , happyReduce_237),
	(238 , happyReduce_238),
	(239 , happyReduce_239),
	(240 , happyReduce_240),
	(241 , happyReduce_241),
	(242 , happyReduce_242),
	(243 , happyReduce_243),
	(244 , happyReduce_244),
	(245 , happyReduce_245),
	(246 , happyReduce_246),
	(247 , happyReduce_247),
	(248 , happyReduce_248),
	(249 , happyReduce_249),
	(250 , happyReduce_250),
	(251 , happyReduce_251),
	(252 , happyReduce_252),
	(253 , happyReduce_253),
	(254 , happyReduce_254),
	(255 , happyReduce_255),
	(256 , happyReduce_256),
	(257 , happyReduce_257),
	(258 , happyReduce_258),
	(259 , happyReduce_259),
	(260 , happyReduce_260),
	(261 , happyReduce_261),
	(262 , happyReduce_262),
	(263 , happyReduce_263),
	(264 , happyReduce_264)
	]

happy_n_terms = 85 :: Int
happy_n_nonterms = 84 :: Int

happyReduce_4 = happySpecReduce_1  0# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn7
		 ((read happy_var_1) :: Integer
	)}

happyReduce_5 = happySpecReduce_1  1# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn8
		 (happy_var_1
	)}

happyReduce_6 = happySpecReduce_1  2# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn9
		 ((read happy_var_1) :: Double
	)}

happyReduce_7 = happySpecReduce_1  3# happyReduction_7
happyReduction_7 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_LString happy_var_1)) -> 
	happyIn10
		 (LString (happy_var_1)
	)}

happyReduce_8 = happySpecReduce_1  4# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (PIdent (mkPosToken happy_var_1)
	)}

happyReduce_9 = happySpecReduce_1  5# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (Gr (reverse happy_var_1)
	)}

happyReduce_10 = happySpecReduce_0  6# happyReduction_10
happyReduction_10  =  happyIn13
		 ([]
	)

happyReduce_11 = happySpecReduce_2  6# happyReduction_11
happyReduction_11 happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn13
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_12 = happySpecReduce_2  7# happyReduction_12
happyReduction_12 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn14
		 (happy_var_1
	)}

happyReduce_13 = happyReduce 10# 7# happyReduction_13
happyReduction_13 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_7 of { happy_var_7 -> 
	case happyOut16 happy_x_9 of { happy_var_9 -> 
	happyIn14
		 (MMain happy_var_2 happy_var_7 happy_var_9
	) `HappyStk` happyRest}}}

happyReduce_14 = happyReduce 4# 7# happyReduction_14
happyReduction_14 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_2 of { happy_var_2 -> 
	case happyOut21 happy_x_4 of { happy_var_4 -> 
	happyIn14
		 (MModule happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_15 = happySpecReduce_3  8# happyReduction_15
happyReduction_15 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 (ConcSpec happy_var_1 happy_var_3
	)}}

happyReduce_16 = happySpecReduce_0  9# happyReduction_16
happyReduction_16  =  happyIn16
		 ([]
	)

happyReduce_17 = happySpecReduce_1  9# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 ((:[]) happy_var_1
	)}

happyReduce_18 = happySpecReduce_3  9# happyReduction_18
happyReduction_18 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_19 = happySpecReduce_2  10# happyReduction_19
happyReduction_19 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_2 of { happy_var_2 -> 
	happyIn17
		 (ConcExp happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_20 = happySpecReduce_0  11# happyReduction_20
happyReduction_20  =  happyIn18
		 ([]
	)

happyReduce_21 = happySpecReduce_2  11# happyReduction_21
happyReduction_21 happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_22 = happyReduce 5# 12# happyReduction_22
happyReduction_22 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut26 happy_x_4 of { happy_var_4 -> 
	happyIn19
		 (TransferIn happy_var_4
	) `HappyStk` happyRest}

happyReduce_23 = happyReduce 5# 12# happyReduction_23
happyReduction_23 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut26 happy_x_4 of { happy_var_4 -> 
	happyIn19
		 (TransferOut happy_var_4
	) `HappyStk` happyRest}

happyReduce_24 = happySpecReduce_2  13# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (MTAbstract happy_var_2
	)}

happyReduce_25 = happySpecReduce_2  13# happyReduction_25
happyReduction_25 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (MTResource happy_var_2
	)}

happyReduce_26 = happySpecReduce_2  13# happyReduction_26
happyReduction_26 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (MTInterface happy_var_2
	)}

happyReduce_27 = happyReduce 4# 13# happyReduction_27
happyReduction_27 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (MTConcrete happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_28 = happyReduce 4# 13# happyReduction_28
happyReduction_28 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (MTInstance happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_29 = happyReduce 6# 13# happyReduction_29
happyReduction_29 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut26 happy_x_4 of { happy_var_4 -> 
	case happyOut26 happy_x_6 of { happy_var_6 -> 
	happyIn20
		 (MTTransfer happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_30 = happyReduce 5# 14# happyReduction_30
happyReduction_30 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_4 of { happy_var_4 -> 
	happyIn21
		 (MBody happy_var_1 happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}}

happyReduce_31 = happySpecReduce_1  14# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (MNoBody happy_var_1
	)}

happyReduce_32 = happySpecReduce_3  14# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 (MWith happy_var_1 happy_var_3
	)}}

happyReduce_33 = happyReduce 8# 14# happyReduction_33
happyReduction_33 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	case happyOut25 happy_x_5 of { happy_var_5 -> 
	case happyOut22 happy_x_7 of { happy_var_7 -> 
	happyIn21
		 (MWithBody happy_var_1 happy_var_3 happy_var_5 (reverse happy_var_7)
	) `HappyStk` happyRest}}}}

happyReduce_34 = happyReduce 5# 14# happyReduction_34
happyReduction_34 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut29 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	case happyOut24 happy_x_5 of { happy_var_5 -> 
	happyIn21
		 (MWithE happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_35 = happyReduce 10# 14# happyReduction_35
happyReduction_35 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut29 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	case happyOut24 happy_x_5 of { happy_var_5 -> 
	case happyOut25 happy_x_7 of { happy_var_7 -> 
	case happyOut22 happy_x_9 of { happy_var_9 -> 
	happyIn21
		 (MWithEBody happy_var_1 happy_var_3 happy_var_5 happy_var_7 (reverse happy_var_9)
	) `HappyStk` happyRest}}}}}

happyReduce_36 = happySpecReduce_2  14# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (MReuse happy_var_2
	)}

happyReduce_37 = happySpecReduce_2  14# happyReduction_37
happyReduction_37 happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (MUnion happy_var_2
	)}

happyReduce_38 = happySpecReduce_0  15# happyReduction_38
happyReduction_38  =  happyIn22
		 ([]
	)

happyReduce_39 = happySpecReduce_2  15# happyReduction_39
happyReduction_39 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_40 = happySpecReduce_2  16# happyReduction_40
happyReduction_40 happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (Ext happy_var_1
	)}

happyReduce_41 = happySpecReduce_0  16# happyReduction_41
happyReduction_41  =  happyIn23
		 (NoExt
	)

happyReduce_42 = happySpecReduce_0  17# happyReduction_42
happyReduction_42  =  happyIn24
		 ([]
	)

happyReduce_43 = happySpecReduce_1  17# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 ((:[]) happy_var_1
	)}

happyReduce_44 = happySpecReduce_3  17# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_45 = happySpecReduce_0  18# happyReduction_45
happyReduction_45  =  happyIn25
		 (NoOpens
	)

happyReduce_46 = happySpecReduce_3  18# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (OpenIn happy_var_2
	)}

happyReduce_47 = happySpecReduce_1  19# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (OName happy_var_1
	)}

happyReduce_48 = happyReduce 4# 19# happyReduction_48
happyReduction_48 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (OQualQO happy_var_2 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_49 = happyReduce 6# 19# happyReduction_49
happyReduction_49 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut11 happy_x_5 of { happy_var_5 -> 
	happyIn26
		 (OQual happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_50 = happySpecReduce_0  20# happyReduction_50
happyReduction_50  =  happyIn27
		 (CMCompl
	)

happyReduce_51 = happySpecReduce_1  20# happyReduction_51
happyReduction_51 happy_x_1
	 =  happyIn27
		 (CMIncompl
	)

happyReduce_52 = happySpecReduce_0  21# happyReduction_52
happyReduction_52  =  happyIn28
		 (QOCompl
	)

happyReduce_53 = happySpecReduce_1  21# happyReduction_53
happyReduction_53 happy_x_1
	 =  happyIn28
		 (QOIncompl
	)

happyReduce_54 = happySpecReduce_1  21# happyReduction_54
happyReduction_54 happy_x_1
	 =  happyIn28
		 (QOInterface
	)

happyReduce_55 = happySpecReduce_0  22# happyReduction_55
happyReduction_55  =  happyIn29
		 ([]
	)

happyReduce_56 = happySpecReduce_1  22# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((:[]) happy_var_1
	)}

happyReduce_57 = happySpecReduce_3  22# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_58 = happySpecReduce_1  23# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (IAll happy_var_1
	)}

happyReduce_59 = happyReduce 4# 23# happyReduction_59
happyReduction_59 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn30
		 (ISome happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_60 = happyReduce 5# 23# happyReduction_60
happyReduction_60 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_4 of { happy_var_4 -> 
	happyIn30
		 (IMinus happy_var_1 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_61 = happySpecReduce_3  24# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 (DDecl happy_var_1 happy_var_3
	)}}

happyReduce_62 = happySpecReduce_3  24# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 (DDef happy_var_1 happy_var_3
	)}}

happyReduce_63 = happyReduce 4# 24# happyReduction_63
happyReduction_63 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn31
		 (DPatt happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_64 = happyReduce 5# 24# happyReduction_64
happyReduction_64 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	case happyOut60 happy_x_5 of { happy_var_5 -> 
	happyIn31
		 (DFull happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_65 = happySpecReduce_2  25# happyReduction_65
happyReduction_65 happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefCat happy_var_2
	)}

happyReduce_66 = happySpecReduce_2  25# happyReduction_66
happyReduction_66 happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefFun happy_var_2
	)}

happyReduce_67 = happySpecReduce_2  25# happyReduction_67
happyReduction_67 happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefFunData happy_var_2
	)}

happyReduce_68 = happySpecReduce_2  25# happyReduction_68
happyReduction_68 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefDef happy_var_2
	)}

happyReduce_69 = happySpecReduce_2  25# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefData happy_var_2
	)}

happyReduce_70 = happySpecReduce_2  25# happyReduction_70
happyReduction_70 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefTrans happy_var_2
	)}

happyReduce_71 = happySpecReduce_2  25# happyReduction_71
happyReduction_71 happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefPar happy_var_2
	)}

happyReduce_72 = happySpecReduce_2  25# happyReduction_72
happyReduction_72 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefOper happy_var_2
	)}

happyReduce_73 = happySpecReduce_2  25# happyReduction_73
happyReduction_73 happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefLincat happy_var_2
	)}

happyReduce_74 = happySpecReduce_2  25# happyReduction_74
happyReduction_74 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefLindef happy_var_2
	)}

happyReduce_75 = happySpecReduce_2  25# happyReduction_75
happyReduction_75 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefLin happy_var_2
	)}

happyReduce_76 = happySpecReduce_3  25# happyReduction_76
happyReduction_76 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (DefPrintCat happy_var_3
	)}

happyReduce_77 = happySpecReduce_3  25# happyReduction_77
happyReduction_77 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (DefPrintFun happy_var_3
	)}

happyReduce_78 = happySpecReduce_2  25# happyReduction_78
happyReduction_78 happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefFlag happy_var_2
	)}

happyReduce_79 = happySpecReduce_2  25# happyReduction_79
happyReduction_79 happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefPrintOld happy_var_2
	)}

happyReduce_80 = happySpecReduce_2  25# happyReduction_80
happyReduction_80 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefLintype happy_var_2
	)}

happyReduce_81 = happySpecReduce_2  25# happyReduction_81
happyReduction_81 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefPattern happy_var_2
	)}

happyReduce_82 = happyReduce 7# 25# happyReduction_82
happyReduction_82 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_5 of { happy_var_5 -> 
	happyIn32
		 (DefPackage happy_var_2 (reverse happy_var_5)
	) `HappyStk` happyRest}}

happyReduce_83 = happySpecReduce_2  25# happyReduction_83
happyReduction_83 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefVars happy_var_2
	)}

happyReduce_84 = happySpecReduce_3  25# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (DefTokenizer happy_var_2
	)}

happyReduce_85 = happySpecReduce_2  26# happyReduction_85
happyReduction_85 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut86 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 (SimpleCatDef happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_86 = happyReduce 4# 26# happyReduction_86
happyReduction_86 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut86 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (ListCatDef happy_var_2 (reverse happy_var_3)
	) `HappyStk` happyRest}}

happyReduce_87 = happyReduce 7# 26# happyReduction_87
happyReduction_87 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut86 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_6 of { happy_var_6 -> 
	happyIn33
		 (ListSizeCatDef happy_var_2 (reverse happy_var_3) happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_88 = happySpecReduce_3  27# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn34
		 (FunDef happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_3  28# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (DataDef happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_1  29# happyReduction_90
happyReduction_90 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (DataId happy_var_1
	)}

happyReduce_91 = happySpecReduce_3  29# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn36
		 (DataQId happy_var_1 happy_var_3
	)}}

happyReduce_92 = happySpecReduce_0  30# happyReduction_92
happyReduction_92  =  happyIn37
		 ([]
	)

happyReduce_93 = happySpecReduce_1  30# happyReduction_93
happyReduction_93 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn37
		 ((:[]) happy_var_1
	)}

happyReduce_94 = happySpecReduce_3  30# happyReduction_94
happyReduction_94 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_95 = happySpecReduce_3  31# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (ParDefDir happy_var_1 happy_var_3
	)}}

happyReduce_96 = happyReduce 6# 31# happyReduction_96
happyReduction_96 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_5 of { happy_var_5 -> 
	happyIn38
		 (ParDefIndir happy_var_1 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_97 = happySpecReduce_1  31# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (ParDefAbs happy_var_1
	)}

happyReduce_98 = happySpecReduce_2  32# happyReduction_98
happyReduction_98 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut86 happy_x_2 of { happy_var_2 -> 
	happyIn39
		 (ParConstr happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_99 = happySpecReduce_3  33# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (PrintDef happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_3  34# happyReduction_100
happyReduction_100 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 (FlagDef happy_var_1 happy_var_3
	)}}

happyReduce_101 = happySpecReduce_2  35# happyReduction_101
happyReduction_101 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 ((:[]) happy_var_1
	)}

happyReduce_102 = happySpecReduce_3  35# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_103 = happySpecReduce_2  36# happyReduction_103
happyReduction_103 happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 ((:[]) happy_var_1
	)}

happyReduce_104 = happySpecReduce_3  36# happyReduction_104
happyReduction_104 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_105 = happySpecReduce_2  37# happyReduction_105
happyReduction_105 happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 ((:[]) happy_var_1
	)}

happyReduce_106 = happySpecReduce_3  37# happyReduction_106
happyReduction_106 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_107 = happySpecReduce_2  38# happyReduction_107
happyReduction_107 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 ((:[]) happy_var_1
	)}

happyReduce_108 = happySpecReduce_3  38# happyReduction_108
happyReduction_108 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_109 = happySpecReduce_2  39# happyReduction_109
happyReduction_109 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 ((:[]) happy_var_1
	)}

happyReduce_110 = happySpecReduce_3  39# happyReduction_110
happyReduction_110 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_111 = happySpecReduce_2  40# happyReduction_111
happyReduction_111 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 ((:[]) happy_var_1
	)}

happyReduce_112 = happySpecReduce_3  40# happyReduction_112
happyReduction_112 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_113 = happySpecReduce_2  41# happyReduction_113
happyReduction_113 happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn48
		 ((:[]) happy_var_1
	)}

happyReduce_114 = happySpecReduce_3  41# happyReduction_114
happyReduction_114 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_115 = happySpecReduce_0  42# happyReduction_115
happyReduction_115  =  happyIn49
		 ([]
	)

happyReduce_116 = happySpecReduce_1  42# happyReduction_116
happyReduction_116 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 ((:[]) happy_var_1
	)}

happyReduce_117 = happySpecReduce_3  42# happyReduction_117
happyReduction_117 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_118 = happySpecReduce_1  43# happyReduction_118
happyReduction_118 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 ((:[]) happy_var_1
	)}

happyReduce_119 = happySpecReduce_3  43# happyReduction_119
happyReduction_119 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_120 = happySpecReduce_1  44# happyReduction_120
happyReduction_120 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (IdentName happy_var_1
	)}

happyReduce_121 = happySpecReduce_3  44# happyReduction_121
happyReduction_121 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (ListName happy_var_2
	)}

happyReduce_122 = happySpecReduce_1  45# happyReduction_122
happyReduction_122 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 ((:[]) happy_var_1
	)}

happyReduce_123 = happySpecReduce_3  45# happyReduction_123
happyReduction_123 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_124 = happySpecReduce_3  46# happyReduction_124
happyReduction_124 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (LDDecl happy_var_1 happy_var_3
	)}}

happyReduce_125 = happySpecReduce_3  46# happyReduction_125
happyReduction_125 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (LDDef happy_var_1 happy_var_3
	)}}

happyReduce_126 = happyReduce 5# 46# happyReduction_126
happyReduction_126 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	case happyOut60 happy_x_5 of { happy_var_5 -> 
	happyIn53
		 (LDFull happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_127 = happySpecReduce_0  47# happyReduction_127
happyReduction_127  =  happyIn54
		 ([]
	)

happyReduce_128 = happySpecReduce_1  47# happyReduction_128
happyReduction_128 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 ((:[]) happy_var_1
	)}

happyReduce_129 = happySpecReduce_3  47# happyReduction_129
happyReduction_129 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_130 = happySpecReduce_1  48# happyReduction_130
happyReduction_130 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (EIdent happy_var_1
	)}

happyReduce_131 = happySpecReduce_3  48# happyReduction_131
happyReduction_131 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (EConstr happy_var_2
	)}

happyReduce_132 = happySpecReduce_3  48# happyReduction_132
happyReduction_132 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (ECons happy_var_2
	)}

happyReduce_133 = happySpecReduce_1  48# happyReduction_133
happyReduction_133 happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (ESort happy_var_1
	)}

happyReduce_134 = happySpecReduce_1  48# happyReduction_134
happyReduction_134 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (EString happy_var_1
	)}

happyReduce_135 = happySpecReduce_1  48# happyReduction_135
happyReduction_135 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (EInt happy_var_1
	)}

happyReduce_136 = happySpecReduce_1  48# happyReduction_136
happyReduction_136 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (EFloat happy_var_1
	)}

happyReduce_137 = happySpecReduce_1  48# happyReduction_137
happyReduction_137 happy_x_1
	 =  happyIn55
		 (EMeta
	)

happyReduce_138 = happySpecReduce_2  48# happyReduction_138
happyReduction_138 happy_x_2
	happy_x_1
	 =  happyIn55
		 (EEmpty
	)

happyReduce_139 = happySpecReduce_1  48# happyReduction_139
happyReduction_139 happy_x_1
	 =  happyIn55
		 (EData
	)

happyReduce_140 = happyReduce 4# 48# happyReduction_140
happyReduction_140 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 (EList happy_var_2 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_141 = happySpecReduce_3  48# happyReduction_141
happyReduction_141 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (EStrings happy_var_2
	)}

happyReduce_142 = happySpecReduce_3  48# happyReduction_142
happyReduction_142 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (ERecord happy_var_2
	)}

happyReduce_143 = happySpecReduce_3  48# happyReduction_143
happyReduction_143 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut77 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (ETuple happy_var_2
	)}

happyReduce_144 = happyReduce 4# 48# happyReduction_144
happyReduction_144 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 (EIndir happy_var_3
	) `HappyStk` happyRest}

happyReduce_145 = happyReduce 5# 48# happyReduction_145
happyReduction_145 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn55
		 (ETyped happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_146 = happySpecReduce_3  48# happyReduction_146
happyReduction_146 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (happy_var_2
	)}

happyReduce_147 = happySpecReduce_1  48# happyReduction_147
happyReduction_147 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (ELString happy_var_1
	)}

happyReduce_148 = happySpecReduce_3  49# happyReduction_148
happyReduction_148 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn56
		 (EProj happy_var_1 happy_var_3
	)}}

happyReduce_149 = happyReduce 5# 49# happyReduction_149
happyReduction_149 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn56
		 (EQConstr happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_150 = happyReduce 4# 49# happyReduction_150
happyReduction_150 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn56
		 (EQCons happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_151 = happySpecReduce_1  49# happyReduction_151
happyReduction_151 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (happy_var_1
	)}

happyReduce_152 = happySpecReduce_2  50# happyReduction_152
happyReduction_152 happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (EApp happy_var_1 happy_var_2
	)}}

happyReduce_153 = happyReduce 4# 50# happyReduction_153
happyReduction_153 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut80 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (ETable happy_var_3
	) `HappyStk` happyRest}

happyReduce_154 = happyReduce 5# 50# happyReduction_154
happyReduction_154 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut55 happy_x_2 of { happy_var_2 -> 
	case happyOut80 happy_x_4 of { happy_var_4 -> 
	happyIn57
		 (ETTable happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_155 = happyReduce 5# 50# happyReduction_155
happyReduction_155 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut55 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_4 of { happy_var_4 -> 
	happyIn57
		 (EVTable happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_156 = happyReduce 6# 50# happyReduction_156
happyReduction_156 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut80 happy_x_5 of { happy_var_5 -> 
	happyIn57
		 (ECase happy_var_2 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_157 = happyReduce 4# 50# happyReduction_157
happyReduction_157 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (EVariants happy_var_3
	) `HappyStk` happyRest}

happyReduce_158 = happyReduce 6# 50# happyReduction_158
happyReduction_158 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_3 of { happy_var_3 -> 
	case happyOut84 happy_x_5 of { happy_var_5 -> 
	happyIn57
		 (EPre happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_159 = happyReduce 4# 50# happyReduction_159
happyReduction_159 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (EStrs happy_var_3
	) `HappyStk` happyRest}

happyReduce_160 = happySpecReduce_3  50# happyReduction_160
happyReduction_160 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (EConAt happy_var_1 happy_var_3
	)}}

happyReduce_161 = happySpecReduce_2  50# happyReduction_161
happyReduction_161 happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (EPatt happy_var_2
	)}

happyReduce_162 = happySpecReduce_3  50# happyReduction_162
happyReduction_162 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (EPattType happy_var_3
	)}

happyReduce_163 = happySpecReduce_1  50# happyReduction_163
happyReduction_163 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (happy_var_1
	)}

happyReduce_164 = happySpecReduce_2  50# happyReduction_164
happyReduction_164 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (ELin happy_var_2
	)}

happyReduce_165 = happySpecReduce_3  51# happyReduction_165
happyReduction_165 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (ESelect happy_var_1 happy_var_3
	)}}

happyReduce_166 = happySpecReduce_3  51# happyReduction_166
happyReduction_166 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (ETupTyp happy_var_1 happy_var_3
	)}}

happyReduce_167 = happySpecReduce_3  51# happyReduction_167
happyReduction_167 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (EExtend happy_var_1 happy_var_3
	)}}

happyReduce_168 = happySpecReduce_1  51# happyReduction_168
happyReduction_168 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 (happy_var_1
	)}

happyReduce_169 = happySpecReduce_3  52# happyReduction_169
happyReduction_169 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 (EGlue happy_var_1 happy_var_3
	)}}

happyReduce_170 = happySpecReduce_1  52# happyReduction_170
happyReduction_170 happy_x_1
	 =  case happyOut61 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (happy_var_1
	)}

happyReduce_171 = happySpecReduce_3  53# happyReduction_171
happyReduction_171 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 (EConcat happy_var_1 happy_var_3
	)}}

happyReduce_172 = happyReduce 4# 53# happyReduction_172
happyReduction_172 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (EAbstr happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_173 = happyReduce 5# 53# happyReduction_173
happyReduction_173 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_3 of { happy_var_3 -> 
	case happyOut60 happy_x_5 of { happy_var_5 -> 
	happyIn60
		 (ECTable happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_174 = happySpecReduce_3  53# happyReduction_174
happyReduction_174 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 (EProd happy_var_1 happy_var_3
	)}}

happyReduce_175 = happySpecReduce_3  53# happyReduction_175
happyReduction_175 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 (ETType happy_var_1 happy_var_3
	)}}

happyReduce_176 = happyReduce 6# 53# happyReduction_176
happyReduction_176 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut54 happy_x_3 of { happy_var_3 -> 
	case happyOut60 happy_x_6 of { happy_var_6 -> 
	happyIn60
		 (ELet happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_177 = happyReduce 4# 53# happyReduction_177
happyReduction_177 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut54 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (ELetb happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_178 = happyReduce 5# 53# happyReduction_178
happyReduction_178 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (EWhere happy_var_1 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_179 = happyReduce 4# 53# happyReduction_179
happyReduction_179 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut82 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 (EEqs happy_var_3
	) `HappyStk` happyRest}

happyReduce_180 = happySpecReduce_3  53# happyReduction_180
happyReduction_180 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_2 of { happy_var_2 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 (EExample happy_var_2 happy_var_3
	)}}

happyReduce_181 = happySpecReduce_1  53# happyReduction_181
happyReduction_181 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn60
		 (happy_var_1
	)}

happyReduce_182 = happySpecReduce_1  54# happyReduction_182
happyReduction_182 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 (happy_var_1
	)}

happyReduce_183 = happySpecReduce_0  55# happyReduction_183
happyReduction_183  =  happyIn62
		 ([]
	)

happyReduce_184 = happySpecReduce_1  55# happyReduction_184
happyReduction_184 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 ((:[]) happy_var_1
	)}

happyReduce_185 = happySpecReduce_3  55# happyReduction_185
happyReduction_185 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_186 = happySpecReduce_0  56# happyReduction_186
happyReduction_186  =  happyIn63
		 (NilExp
	)

happyReduce_187 = happySpecReduce_2  56# happyReduction_187
happyReduction_187 happy_x_2
	happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_2 of { happy_var_2 -> 
	happyIn63
		 (ConsExp happy_var_1 happy_var_2
	)}}

happyReduce_188 = happySpecReduce_1  57# happyReduction_188
happyReduction_188 happy_x_1
	 =  happyIn64
		 (PChar
	)

happyReduce_189 = happySpecReduce_3  57# happyReduction_189
happyReduction_189 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (PChars happy_var_2
	)}

happyReduce_190 = happySpecReduce_2  57# happyReduction_190
happyReduction_190 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (PMacro happy_var_2
	)}

happyReduce_191 = happyReduce 4# 57# happyReduction_191
happyReduction_191 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn64
		 (PM happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_192 = happySpecReduce_1  57# happyReduction_192
happyReduction_192 happy_x_1
	 =  happyIn64
		 (PW
	)

happyReduce_193 = happySpecReduce_1  57# happyReduction_193
happyReduction_193 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (PV happy_var_1
	)}

happyReduce_194 = happySpecReduce_3  57# happyReduction_194
happyReduction_194 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (PCon happy_var_2
	)}

happyReduce_195 = happySpecReduce_3  57# happyReduction_195
happyReduction_195 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (PQ happy_var_1 happy_var_3
	)}}

happyReduce_196 = happySpecReduce_1  57# happyReduction_196
happyReduction_196 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (PInt happy_var_1
	)}

happyReduce_197 = happySpecReduce_1  57# happyReduction_197
happyReduction_197 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (PFloat happy_var_1
	)}

happyReduce_198 = happySpecReduce_1  57# happyReduction_198
happyReduction_198 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (PStr happy_var_1
	)}

happyReduce_199 = happySpecReduce_3  57# happyReduction_199
happyReduction_199 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (PR happy_var_2
	)}

happyReduce_200 = happySpecReduce_3  57# happyReduction_200
happyReduction_200 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut78 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (PTup happy_var_2
	)}

happyReduce_201 = happySpecReduce_3  57# happyReduction_201
happyReduction_201 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (happy_var_2
	)}

happyReduce_202 = happySpecReduce_2  58# happyReduction_202
happyReduction_202 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_2 of { happy_var_2 -> 
	happyIn65
		 (PC happy_var_1 happy_var_2
	)}}

happyReduce_203 = happyReduce 4# 58# happyReduction_203
happyReduction_203 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut71 happy_x_4 of { happy_var_4 -> 
	happyIn65
		 (PQC happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_204 = happySpecReduce_2  58# happyReduction_204
happyReduction_204 happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (PRep happy_var_1
	)}

happyReduce_205 = happySpecReduce_3  58# happyReduction_205
happyReduction_205 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (PAs happy_var_1 happy_var_3
	)}}

happyReduce_206 = happySpecReduce_2  58# happyReduction_206
happyReduction_206 happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_2 of { happy_var_2 -> 
	happyIn65
		 (PNeg happy_var_2
	)}

happyReduce_207 = happySpecReduce_1  58# happyReduction_207
happyReduction_207 happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (happy_var_1
	)}

happyReduce_208 = happySpecReduce_3  59# happyReduction_208
happyReduction_208 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	case happyOut65 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (PDisj happy_var_1 happy_var_3
	)}}

happyReduce_209 = happySpecReduce_3  59# happyReduction_209
happyReduction_209 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	case happyOut65 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (PSeq happy_var_1 happy_var_3
	)}}

happyReduce_210 = happySpecReduce_1  59# happyReduction_210
happyReduction_210 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (happy_var_1
	)}

happyReduce_211 = happySpecReduce_3  60# happyReduction_211
happyReduction_211 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_3 of { happy_var_3 -> 
	happyIn67
		 (PA happy_var_1 happy_var_3
	)}}

happyReduce_212 = happySpecReduce_1  61# happyReduction_212
happyReduction_212 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn68
		 (LIdent happy_var_1
	)}

happyReduce_213 = happySpecReduce_2  61# happyReduction_213
happyReduction_213 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn68
		 (LVar happy_var_2
	)}

happyReduce_214 = happySpecReduce_1  62# happyReduction_214
happyReduction_214 happy_x_1
	 =  happyIn69
		 (Sort_Type
	)

happyReduce_215 = happySpecReduce_1  62# happyReduction_215
happyReduction_215 happy_x_1
	 =  happyIn69
		 (Sort_PType
	)

happyReduce_216 = happySpecReduce_1  62# happyReduction_216
happyReduction_216 happy_x_1
	 =  happyIn69
		 (Sort_Tok
	)

happyReduce_217 = happySpecReduce_1  62# happyReduction_217
happyReduction_217 happy_x_1
	 =  happyIn69
		 (Sort_Str
	)

happyReduce_218 = happySpecReduce_1  62# happyReduction_218
happyReduction_218 happy_x_1
	 =  happyIn69
		 (Sort_Strs
	)

happyReduce_219 = happySpecReduce_0  63# happyReduction_219
happyReduction_219  =  happyIn70
		 ([]
	)

happyReduce_220 = happySpecReduce_1  63# happyReduction_220
happyReduction_220 happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	happyIn70
		 ((:[]) happy_var_1
	)}

happyReduce_221 = happySpecReduce_3  63# happyReduction_221
happyReduction_221 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	case happyOut70 happy_x_3 of { happy_var_3 -> 
	happyIn70
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_222 = happySpecReduce_1  64# happyReduction_222
happyReduction_222 happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 ((:[]) happy_var_1
	)}

happyReduce_223 = happySpecReduce_2  64# happyReduction_223
happyReduction_223 happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_2 of { happy_var_2 -> 
	happyIn71
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_224 = happySpecReduce_1  65# happyReduction_224
happyReduction_224 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 (BIdent happy_var_1
	)}

happyReduce_225 = happySpecReduce_1  65# happyReduction_225
happyReduction_225 happy_x_1
	 =  happyIn72
		 (BWild
	)

happyReduce_226 = happySpecReduce_0  66# happyReduction_226
happyReduction_226  =  happyIn73
		 ([]
	)

happyReduce_227 = happySpecReduce_1  66# happyReduction_227
happyReduction_227 happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	happyIn73
		 ((:[]) happy_var_1
	)}

happyReduce_228 = happySpecReduce_3  66# happyReduction_228
happyReduction_228 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut73 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_229 = happyReduce 5# 67# happyReduction_229
happyReduction_229 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn74
		 (DDec happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_230 = happySpecReduce_1  67# happyReduction_230
happyReduction_230 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn74
		 (DExp happy_var_1
	)}

happyReduce_231 = happySpecReduce_1  68# happyReduction_231
happyReduction_231 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn75
		 (TComp happy_var_1
	)}

happyReduce_232 = happySpecReduce_1  69# happyReduction_232
happyReduction_232 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn76
		 (PTComp happy_var_1
	)}

happyReduce_233 = happySpecReduce_0  70# happyReduction_233
happyReduction_233  =  happyIn77
		 ([]
	)

happyReduce_234 = happySpecReduce_1  70# happyReduction_234
happyReduction_234 happy_x_1
	 =  case happyOut75 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 ((:[]) happy_var_1
	)}

happyReduce_235 = happySpecReduce_3  70# happyReduction_235
happyReduction_235 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut75 happy_x_1 of { happy_var_1 -> 
	case happyOut77 happy_x_3 of { happy_var_3 -> 
	happyIn77
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_236 = happySpecReduce_0  71# happyReduction_236
happyReduction_236  =  happyIn78
		 ([]
	)

happyReduce_237 = happySpecReduce_1  71# happyReduction_237
happyReduction_237 happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 ((:[]) happy_var_1
	)}

happyReduce_238 = happySpecReduce_3  71# happyReduction_238
happyReduction_238 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_3 of { happy_var_3 -> 
	happyIn78
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_239 = happySpecReduce_3  72# happyReduction_239
happyReduction_239 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn79
		 (Case happy_var_1 happy_var_3
	)}}

happyReduce_240 = happySpecReduce_1  73# happyReduction_240
happyReduction_240 happy_x_1
	 =  case happyOut79 happy_x_1 of { happy_var_1 -> 
	happyIn80
		 ((:[]) happy_var_1
	)}

happyReduce_241 = happySpecReduce_3  73# happyReduction_241
happyReduction_241 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut79 happy_x_1 of { happy_var_1 -> 
	case happyOut80 happy_x_3 of { happy_var_3 -> 
	happyIn80
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_242 = happySpecReduce_3  74# happyReduction_242
happyReduction_242 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn81
		 (Equ happy_var_1 happy_var_3
	)}}

happyReduce_243 = happySpecReduce_0  75# happyReduction_243
happyReduction_243  =  happyIn82
		 ([]
	)

happyReduce_244 = happySpecReduce_1  75# happyReduction_244
happyReduction_244 happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	happyIn82
		 ((:[]) happy_var_1
	)}

happyReduce_245 = happySpecReduce_3  75# happyReduction_245
happyReduction_245 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	case happyOut82 happy_x_3 of { happy_var_3 -> 
	happyIn82
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_246 = happySpecReduce_3  76# happyReduction_246
happyReduction_246 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn83
		 (Alt happy_var_1 happy_var_3
	)}}

happyReduce_247 = happySpecReduce_0  77# happyReduction_247
happyReduction_247  =  happyIn84
		 ([]
	)

happyReduce_248 = happySpecReduce_1  77# happyReduction_248
happyReduction_248 happy_x_1
	 =  case happyOut83 happy_x_1 of { happy_var_1 -> 
	happyIn84
		 ((:[]) happy_var_1
	)}

happyReduce_249 = happySpecReduce_3  77# happyReduction_249
happyReduction_249 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut83 happy_x_1 of { happy_var_1 -> 
	case happyOut84 happy_x_3 of { happy_var_3 -> 
	happyIn84
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_250 = happyReduce 5# 78# happyReduction_250
happyReduction_250 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn85
		 (DDDec happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_251 = happySpecReduce_1  78# happyReduction_251
happyReduction_251 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn85
		 (DDExp happy_var_1
	)}

happyReduce_252 = happySpecReduce_0  79# happyReduction_252
happyReduction_252  =  happyIn86
		 ([]
	)

happyReduce_253 = happySpecReduce_2  79# happyReduction_253
happyReduction_253 happy_x_2
	happy_x_1
	 =  case happyOut86 happy_x_1 of { happy_var_1 -> 
	case happyOut85 happy_x_2 of { happy_var_2 -> 
	happyIn86
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_254 = happySpecReduce_2  80# happyReduction_254
happyReduction_254 happy_x_2
	happy_x_1
	 =  case happyOut88 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn87
		 (OldGr happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_255 = happySpecReduce_0  81# happyReduction_255
happyReduction_255  =  happyIn88
		 (NoIncl
	)

happyReduce_256 = happySpecReduce_2  81# happyReduction_256
happyReduction_256 happy_x_2
	happy_x_1
	 =  case happyOut90 happy_x_2 of { happy_var_2 -> 
	happyIn88
		 (Incl happy_var_2
	)}

happyReduce_257 = happySpecReduce_1  82# happyReduction_257
happyReduction_257 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn89
		 (FString happy_var_1
	)}

happyReduce_258 = happySpecReduce_1  82# happyReduction_258
happyReduction_258 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn89
		 (FIdent happy_var_1
	)}

happyReduce_259 = happySpecReduce_2  82# happyReduction_259
happyReduction_259 happy_x_2
	happy_x_1
	 =  case happyOut89 happy_x_2 of { happy_var_2 -> 
	happyIn89
		 (FSlash happy_var_2
	)}

happyReduce_260 = happySpecReduce_2  82# happyReduction_260
happyReduction_260 happy_x_2
	happy_x_1
	 =  case happyOut89 happy_x_2 of { happy_var_2 -> 
	happyIn89
		 (FDot happy_var_2
	)}

happyReduce_261 = happySpecReduce_2  82# happyReduction_261
happyReduction_261 happy_x_2
	happy_x_1
	 =  case happyOut89 happy_x_2 of { happy_var_2 -> 
	happyIn89
		 (FMinus happy_var_2
	)}

happyReduce_262 = happySpecReduce_2  82# happyReduction_262
happyReduction_262 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut89 happy_x_2 of { happy_var_2 -> 
	happyIn89
		 (FAddId happy_var_1 happy_var_2
	)}}

happyReduce_263 = happySpecReduce_2  83# happyReduction_263
happyReduction_263 happy_x_2
	happy_x_1
	 =  case happyOut89 happy_x_1 of { happy_var_1 -> 
	happyIn90
		 ((:[]) happy_var_1
	)}

happyReduce_264 = happySpecReduce_3  83# happyReduction_264
happyReduction_264 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut89 happy_x_1 of { happy_var_1 -> 
	case happyOut90 happy_x_3 of { happy_var_3 -> 
	happyIn90
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 84# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS ";") -> cont 1#;
	PT _ (TS "=") -> cont 2#;
	PT _ (TS "{") -> cont 3#;
	PT _ (TS "}") -> cont 4#;
	PT _ (TS "(") -> cont 5#;
	PT _ (TS ")") -> cont 6#;
	PT _ (TS ":") -> cont 7#;
	PT _ (TS "->") -> cont 8#;
	PT _ (TS "**") -> cont 9#;
	PT _ (TS ",") -> cont 10#;
	PT _ (TS "[") -> cont 11#;
	PT _ (TS "]") -> cont 12#;
	PT _ (TS "-") -> cont 13#;
	PT _ (TS ".") -> cont 14#;
	PT _ (TS "|") -> cont 15#;
	PT _ (TS "%") -> cont 16#;
	PT _ (TS "?") -> cont 17#;
	PT _ (TS "<") -> cont 18#;
	PT _ (TS ">") -> cont 19#;
	PT _ (TS "@") -> cont 20#;
	PT _ (TS "!") -> cont 21#;
	PT _ (TS "*") -> cont 22#;
	PT _ (TS "+") -> cont 23#;
	PT _ (TS "++") -> cont 24#;
	PT _ (TS "\\") -> cont 25#;
	PT _ (TS "=>") -> cont 26#;
	PT _ (TS "#") -> cont 27#;
	PT _ (TS "_") -> cont 28#;
	PT _ (TS "$") -> cont 29#;
	PT _ (TS "/") -> cont 30#;
	PT _ (TS "Lin") -> cont 31#;
	PT _ (TS "PType") -> cont 32#;
	PT _ (TS "Str") -> cont 33#;
	PT _ (TS "Strs") -> cont 34#;
	PT _ (TS "Tok") -> cont 35#;
	PT _ (TS "Type") -> cont 36#;
	PT _ (TS "abstract") -> cont 37#;
	PT _ (TS "case") -> cont 38#;
	PT _ (TS "cat") -> cont 39#;
	PT _ (TS "concrete") -> cont 40#;
	PT _ (TS "data") -> cont 41#;
	PT _ (TS "def") -> cont 42#;
	PT _ (TS "flags") -> cont 43#;
	PT _ (TS "fn") -> cont 44#;
	PT _ (TS "fun") -> cont 45#;
	PT _ (TS "grammar") -> cont 46#;
	PT _ (TS "in") -> cont 47#;
	PT _ (TS "include") -> cont 48#;
	PT _ (TS "incomplete") -> cont 49#;
	PT _ (TS "instance") -> cont 50#;
	PT _ (TS "interface") -> cont 51#;
	PT _ (TS "let") -> cont 52#;
	PT _ (TS "lin") -> cont 53#;
	PT _ (TS "lincat") -> cont 54#;
	PT _ (TS "lindef") -> cont 55#;
	PT _ (TS "lintype") -> cont 56#;
	PT _ (TS "of") -> cont 57#;
	PT _ (TS "open") -> cont 58#;
	PT _ (TS "oper") -> cont 59#;
	PT _ (TS "out") -> cont 60#;
	PT _ (TS "package") -> cont 61#;
	PT _ (TS "param") -> cont 62#;
	PT _ (TS "pattern") -> cont 63#;
	PT _ (TS "pre") -> cont 64#;
	PT _ (TS "printname") -> cont 65#;
	PT _ (TS "resource") -> cont 66#;
	PT _ (TS "reuse") -> cont 67#;
	PT _ (TS "strs") -> cont 68#;
	PT _ (TS "table") -> cont 69#;
	PT _ (TS "tokenizer") -> cont 70#;
	PT _ (TS "transfer") -> cont 71#;
	PT _ (TS "type") -> cont 72#;
	PT _ (TS "union") -> cont 73#;
	PT _ (TS "var") -> cont 74#;
	PT _ (TS "variants") -> cont 75#;
	PT _ (TS "where") -> cont 76#;
	PT _ (TS "with") -> cont 77#;
	PT _ (TI happy_dollar_dollar) -> cont 78#;
	PT _ (TL happy_dollar_dollar) -> cont 79#;
	PT _ (TD happy_dollar_dollar) -> cont 80#;
	PT _ (T_LString happy_dollar_dollar) -> cont 81#;
	PT _ (T_PIdent _) -> cont 82#;
	_ -> cont 83#;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [Token] -> Err a
happyError' = happyError

pGrammar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut12 x))

pModDef tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut14 x))

pOldGrammar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut87 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut60 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map prToken (take 4 ts))

myLexer = tokens
{-# LINE 1 "GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command line>" #-}
{-# LINE 1 "GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Int# Happy_IntList





{-# LINE 49 "GenericTemplate.hs" #-}

{-# LINE 59 "GenericTemplate.hs" #-}

{-# LINE 68 "GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	(happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
	= {- nothing -}


	  case action of
		0#		  -> {- nothing -}
				     happyFail i tk st
		-1# 	  -> {- nothing -}
				     happyAccept i tk st
		n | (n <# (0# :: Int#)) -> {- nothing -}

				     (happyReduceArr ! rule) i tk st
				     where rule = (I# ((negateInt# ((n +# (1# :: Int#))))))
		n		  -> {- nothing -}


				     happyShift new_state i tk st
				     where new_state = (n -# (1# :: Int#))
   where off    = indexShortOffAddr happyActOffsets st
	 off_i  = (off +# i)
	 check  = if (off_i >=# (0# :: Int#))
			then (indexShortOffAddr happyCheck off_i ==#  i)
			else False
 	 action | check     = indexShortOffAddr happyTable off_i
		| otherwise = indexShortOffAddr happyDefActions st

{-# LINE 127 "GenericTemplate.hs" #-}


indexShortOffAddr (HappyA# arr) off =
#if __GLASGOW_HASKELL__ > 500
	narrow16Int# i
#elif __GLASGOW_HASKELL__ == 500
	intToInt16# i
#else
	(i `iShiftL#` 16#) `iShiftRA#` 16#
#endif
  where
#if __GLASGOW_HASKELL__ >= 503
	i = word2Int# ((high `uncheckedShiftL#` 8#) `or#` low)
#else
	i = word2Int# ((high `shiftL#` 8#) `or#` low)
#endif
	high = int2Word# (ord# (indexCharOffAddr# arr (off' +# 1#)))
	low  = int2Word# (ord# (indexCharOffAddr# arr off'))
	off' = off *# 2#





data HappyAddr = HappyA# Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case unsafeCoerce# x of { (I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k -# (1# :: Int#)) sts of
	 sts1@((HappyCons (st1@(action)) (_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

             off    = indexShortOffAddr happyGotoOffsets st1
             off_i  = (off +# nt)
             new_state = indexShortOffAddr happyTable off_i




happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n -# (1# :: Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n -# (1#::Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off    = indexShortOffAddr happyGotoOffsets st
	 off_i  = (off +# nt)
 	 new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail  0# tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
	happyDoAction 0# tk action sts ( (unsafeCoerce# (I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
