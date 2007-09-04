abstract Calculator = {

  flags startcat = Prog ;

  cat Prog ; Exp ; Var ;

  fun
    PEmpty : Prog ;
    PDecl  : Exp -> (Var -> Prog) -> Prog ;
    PAss   : Var -> Exp  -> Prog  -> Prog ;

    EPlus, EMinus, ETimes, EDiv : Exp -> Exp -> Exp ;

    EInt : Int -> Exp ;
    EVar : Var -> Exp ;

    ex1 : Prog ;

  def
    ex1 = 
      PDecl (EPlus (EInt 2) (EInt 3)) (\x -> 
        PDecl (EPlus (EVar x) (EInt 1)) (\y -> 
          PAss x (EPlus (EVar x) (ETimes (EInt 9) (EVar y))) PEmpty)) ;

}
