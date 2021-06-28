open Ast

(* defining errors *)

(* error for variable not bound to a value *)
let unbound_variable_err = "Unbound variable"

(* error for a binop with arguments with different types *)
let binop_err = "Type mismatch on Binop"

(* error for evaluating an expr that's not a function*)
let not_function_err = "First expression is not a function "

let unspecified_type_err = "Error: Unspecified Type"


(* declaring basic types *)
type ttype = 
  | TypeInt 
  | TypeBool
  | TypeFunc  of (ttype * ttype)



(* defining environment *)
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

let type_to_type (t : typ) : ttype = 
  match t with
  | TInt  -> TypeInt
  | TBool -> TypeBool
  
let is_value : expr -> bool = function
  | Bool _ | Int _ | Fun _ -> true
  | Let _ | App _ | Var _ | Binop _ -> false

(* finds type of the input expression based on env *)
let rec find_type env = function
  | Int _ -> TypeInt
  | Bool _ -> TypeBool
  | Var var -> find env var 
  | Binop (binop, e1, e2) -> find_type_binop env binop e1 e2
  | Let (var, e1, e2) -> find_type_let env var e1 e2
  | Fun (var, t, e) -> find_type_fun env var t e
  | App (e1, e2) -> find_type_app env e1 e2 

(* helper function for find_type *)
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

(* helper function for find_type *)
and find_type_let env var e1 e2 = 
  let t1 = find_type env e1 in
  let env' = add env var t1 in
  find_type env' e2 

(* helper function for find_type *)
and find_type_app env e1 e2  = 
  match e1 with
  | Fun(var, _, e) -> find_type_let env var e2 e 
  | _ ->  failwith not_function_err

and find_type_fun env var t e = 
  let t' = type_to_type t in
  let env' = add env var t' in
  TypeFunc (t', (find_type env' e))

let print_type t = 
  let rec print_type_h (t) : string = 
    match t with
    | TypeInt -> "int"
    | TypeBool -> "bool"
    | TypeFunc (t1, t2) -> "fun: "^ print_type_h t1 ^ " -> "^ print_type_h t2
  in
  print_type_h t
  
(* raises errors if expr is not well-typed, unit otherwise *)
let typecheck expr = 
  ignore (find_type empty expr)
