(* declaring basic types *)
open Ast

(* defining errors *)

(* error for variable not bound to a value *)
let unbound_variable_err = "Unbound variable"

(* error for a binop with arguments with different types *)
let binop_err = "Type mismatch on Binop"

(* error for evaluating an expr that's not a function*)
let not_function_err = "First expression is not a function "



type ttype = 
  | TypeInt
  | TypeBool
  | TypeFunc

(* defining context *)
module Environment = struct
  type t = (string * ttype) list 

  let empty = []

  let find env v = 
    try List.assoc v env 
    with Not_found -> failwith unbound_variable_err

  let add env v typ = 
    (v,typ)::env

end

open Environment


let match_ (l:string) (r:string) : bool = 
  l = r 


let is_value : expr -> bool= function
  | Bool _ | Int _ | Fun _ -> true
  | Let _ | App _ | Var _ | Binop _ -> false

let rec find_type env = function
  | Int _ -> TypeInt
  | Bool _ -> TypeBool
  | Var var -> find env var 
  | Binop (binop, e1, e2) -> find_type_binop env binop e1 e2
  | Let (var, e1, e2) -> find_type_let env var e1 e2
  | Fun (_, e) -> find_type env e
  | App (e1, e2) -> find_type_app env e1 e2 


and find_type_binop env binop e1 e2 = 
  let t1, t2 = find_type env e1, find_type env e2 in
  match binop, t1, t2 with
  | Add, TypeInt, TypeInt -> TypeInt
  | Sub, TypeInt, TypeInt -> TypeInt
  | Mult, TypeInt, TypeInt -> TypeInt
  | Div, TypeInt , TypeInt -> TypeInt
  | And, TypeBool, TypeBool -> TypeBool
  | Or, TypeBool, TypeBool -> TypeBool
  | _ -> failwith binop_err

and find_type_let env var e1 e2 = 
  let t1 = find_type env e1 in
  let env' = add env var t1 in
  find_type env' e2 

and find_type_app env e1 e2  = 
  match e1 with
  | Fun(var, e) -> find_type_let env var e2 e 
  | _ ->  failwith not_function_err

let typecheck expr = 
  ignore (find_type empty expr)


  










