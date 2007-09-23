----------------------------------------------------------------------
-- |
-- Maintainer  : Krasimir Angelov
-- Stability   : (stable)
-- Portability : (portable)
--
-- Definitions of fast multiple context-free grammars
-----------------------------------------------------------------------------

module GF.Formalism.FCFG where

import Control.Monad (liftM)
import Data.List (groupBy)
import Data.Array

import GF.Infra.PrintClass


------------------------------------------------------------
-- grammar types

type FLabel    = Int
type FPointPos = Int

data FSymbol cat tok 
  = FSymCat cat {-# UNPACK #-} !FLabel {-# UNPACK #-} !Int 
  | FSymTok tok

type FCFGrammar cat name tok = [FCFRule cat name tok]
data FCFRule    cat name tok = FRule name [cat] cat (Array FLabel (Array FPointPos (FSymbol cat tok)))

------------------------------------------------------------
-- pretty-printing

instance (Print c, Print t) => Print (FSymbol c t) where
    prt (FSymCat c l n) = "($" ++ prt n ++ "!" ++ prt l ++ ")"
    prt (FSymTok t)     = simpleShow (prt t)
      where simpleShow str = "\"" ++ concatMap mkEsc str ++ "\""
            mkEsc '\\' = "\\\\"
            mkEsc '\"' = "\\\""
            mkEsc '\n' = "\\n"
            mkEsc '\t' = "\\t"
            mkEsc chr  = [chr]
    prtList = prtSep " "

instance (Print c, Print n, Print t) => Print (FCFRule n c t) where
    prt (FRule name args res lins) = prt name ++ " : " ++ (if null args then "" else prtSep " " args ++ " -> ") ++ prt res ++
                                     " =\n   [" ++ prtSep "\n    " ["("++prtSep " " [prt sym | (_,sym) <- assocs syms]++")" | (_,syms) <- assocs lins]++"]"
    prtList = prtSep "\n"
