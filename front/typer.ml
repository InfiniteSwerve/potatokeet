(* declaring basic types *)
open Ast

type ttype = 
  | TypeInt
  | TypeBool

(* defining errors *)

(* error for variable not bound to a value *)
let unbound_variable_err = "Unbound variable"

(* error for a binop with arguments with different types *)
let binop_err = "Type mismatch on Binop"

(* error for evaluating an expr that's not a function*)
let not_function_err = "First expression is not a function "


(* defining context *)
module Context = struct
  type t = (string * ttype) list 

  let empty = []

  let find ctx v = 
    try List.assoc v ctx 
    with Not_found -> failwith unbound_variable_err

  let add ctx v typ = 
    (v,typ)::ctx

end

open Context

let is_value : expr -> bool= function
  | Bool _ | Int _ | Fun _ -> true
  | Let _ | App _ | Var _ | Binop _ -> false

let rec find_type ctx = function
  | Int _ -> TypeInt
  | Bool _ -> TypeBool
  | Var var -> find ctx var 
  | Binop (binop, e1, e2) -> find_type_binop ctx binop e1 e2
  | Let (var, e1, e2) -> find_type_let ctx var e1 e2
  | Fun (_, e) -> find_type ctx e
  | App (e1, e2) -> find_type_app ctx e1 e2 


and find_type_binop ctx binop e1 e2 = 
  let t1, t2 = find_type ctx e1, find_type ctx e2 in
  match binop, t1, t2 with
  | Add, TypeInt, TypeInt -> TypeInt
  | Sub, TypeInt, TypeInt -> TypeInt
  | Mult, TypeInt, TypeInt -> TypeInt
  | Div, TypeInt , TypeInt -> TypeInt
  | And, TypeBool, TypeBool -> TypeBool
  | Or, TypeBool, TypeBool -> TypeBool
  | _ -> failwith binop_err

and find_type_let ctx var e1 e2 = 
  let t1 = find_type ctx e1 in
  let ctx' = add ctx var t1 in
  find_type ctx' e2 

and find_type_app _ _ _  = 
  TypeBool














