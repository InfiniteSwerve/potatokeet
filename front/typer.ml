open Ast

(* defining errors *)

(* error for variable not bound to a value *)
let unbound_variable_err = "Unbound variable"

(* error for a binop with arguments with different types *)
let binop_err = "Type mismatch on Binop"

(* error for evaluating an expr that's not a function*)
let not_function_err = "First expression is not a function "

let unspecified_type_err = "Error: Unspecified Type"

let type_error = "Mismatched types"


(* declaring basic types *)
type ttype = 
  | TypeInt 
  | TypeBool
  | TypeNull
  | TypeFunc  of {param_type : ttype ; body_type: ttype }


let rec t_equal a b = 
  match a,b with
  | TypeInt, TypeInt -> true
  | TypeBool, TypeBool -> true
  | TypeFunc {param_type = param_a; body_type = body_a},
    TypeFunc {param_type = param_b; body_type = body_b}
    -> t_equal param_a param_b && t_equal body_a body_b
  | _ -> false

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

let rec type_to_type (t : typ) : ttype = 
  match t with
  | TInt  -> TypeInt
  | TBool -> TypeBool
  | TNull -> TypeNull
  | TFun {param_type;body_type} -> 
    TypeFunc {param_type = type_to_type param_type;
               body_type = type_to_type body_type}

  
let is_value : expr -> bool = function
  | Bool _ | Int _ | Fun _ -> true
  | Let _ | App _ | Var _ | Binop _ -> false


let print_type t = 
  let rec print_type_h (t) : string = 
    match t with
    | TypeInt -> "int"
    | TypeBool -> "bool"
    | TypeNull -> "'a"
    | TypeFunc {param_type; body_type;_} -> "fun: "^ print_type_h param_type ^ " -> "^ print_type_h body_type
  in
  print_type_h t

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

(* helper function for find_type
  let var = e1 in e2 *)
and find_type_let env var e1 e2 = 
  let t1 = find_type env e1 in
  let env' = add env var t1 in
  find_type env' e2 

(* helper function for find_type *)
and find_type_app env e1 e2  = 
  let func_type = find_type env e1 in
  let argument_type = find_type env e2 in
  match func_type with
  | TypeFunc {param_type; body_type} 
    when t_equal param_type argument_type  
    || t_equal param_type TypeNull -> body_type
  | _ -> failwith type_error


and find_type_fun env var t e = 
  let t' = type_to_type t in
  let env' = add env var t' in
  TypeFunc { param_type = t';body_type =  find_type env' e}


  
(* raises errors if expr is not well-typed, unit otherwise *)
let typecheck expr = 
  ignore (find_type empty expr)
