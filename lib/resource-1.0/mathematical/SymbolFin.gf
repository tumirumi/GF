concrete SymbolFin of Symbol = CatFin ** open Prelude, NounFin, ResFin in {

lin
  SymbPN i = {s = \\c => i.s} ; --- c
  IntPN i  = {s = \\c => i.s} ; --- c
  FloatPN i  = {s = \\c => i.s} ; --- c

  CNIntNP cn i = {
    s = \\c => cn.s ! NCase Sg (npform2case Sg c) ++ i.s ;
    a = agrP3 Sg ;
    isPron = False
    } ;
  CNSymbNP det cn xs = let detcn = NounFin.DetCN det cn in {
    s = \\c => detcn.s ! c ++ xs.s ;
    a = detcn.a ;
    isPron = False
    } ;
  CNNumNP cn i = {
    s = \\c => cn.s ! NCase Sg (npform2case Sg c) ++ i.s ! Sg ! Nom ;
    a = agrP3 Sg ;
    isPron = False
    } ;

  SymbS sy = sy ;

  SymbNum n = {s = \\_,_ => n.s ; isNum = True} ;
  SymbOrd n = {s = \\_,_ => n.s ++ "."} ;

lincat 

  Symb, [Symb] = SS ;

lin

  MkSymb s = s ;

  BaseSymb = infixSS "ja" ;
  ConsSymb = infixSS "," ;

}

