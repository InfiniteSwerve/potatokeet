type binop = 
  | Add
  | Sub
  | Mult
  | Div
  | And
  | Or

type expr = 
  | Int of int
  | Bool of bool
  | Var of string
  | Let of string * expr * expr
  | Fun of string * expr
  | App of expr * expr
  | Binop of binop * expr * expr