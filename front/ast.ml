type binop = 
  | Add
  | Sub
  | Mult
  | Div
  | And
  | Or

type typ = 
  | TInt 
  | TBool
  | TNull
  | TFun of {param_type : typ ; body_type : typ}

  type expr = 
  | Int of int
  | Bool of bool
  | Var of string
  | Let of string * expr * expr
  | Fun of string * typ * expr
  | App of expr * expr
  | Binop of binop * expr * expr


