open Ast
open Typer
let parse (s : string) : expr = 
  let tokens = Lexing.from_string s in
  let ast = Parser.eval Lexer.read tokens in
  ast

let unbound_variable_err = "Error: Unbound Variable"

let gensym = 
  let counter = ref 0 in
  fun () -> incr counter; "var" ^ string_of_int !counter



module VarSet = Set.Make(String)
let empty = VarSet.empty
let singleton = VarSet.singleton
let union = VarSet.union
let diff = VarSet.diff
let mem = VarSet.mem

let rec fv : expr -> VarSet.t = function
  | Var var -> singleton var
  | App (e1, e2) -> union (fv e1) (fv e2)
  | Fun (var, e) -> diff (fv e) (singleton var)
  | _ -> empty

let rec replace e y x = match e with
  | Var z -> if z = x then Var y else e
  | App (e1, e2) -> App(replace e1 y x, replace e2 y x)
  | Fun (var, exp) -> Fun ( (if var = x then y else var), replace exp y x)
  | Let (var, e1, e2) -> Let ((if var = x then y else var), replace e1 y x, replace e2 y x)
  | Binop (binop, e1, e2) -> Binop (binop, replace e1 y x, replace e2 y x)
  | _ -> e


let rec subst e v x = 
  match e with
  (* replace all x's with v's in e *)
  | Var var -> if x = var then v else e
  | Bool _ -> e
  | Int _ -> e
  | Binop (binop, e1, e2) -> 
    Binop (binop, subst e1 v x, subst e2 v x)
  | Let (var, e1, e2) ->
    let subst_e = subst e1 v x in
    (* Don't replace in e2 if y=x otherwise
      you'll be duplicating computation *)
    if var = x then Let (var, subst_e, e2)
    else Let (var, subst_e, subst e2 v x)
  (* We fix variable capture by replacement*)
  | Fun (var, exp) -> 
    if var = x then e 
    else if not (mem var (fv v)) then Fun (var, subst exp v x)
    else 
      let fresh = gensym () in
      let new_body = replace exp var fresh in
      Fun (fresh, subst new_body v x)  
  | App (e1, e2) -> App (subst e1 v x, subst e2 v x)

(* simplify does structural simplifying of expressions *)
let rec simplify ( expr : expr ) : expr = match expr with
  | Var _ -> failwith unbound_variable_err
  | Int _ | Bool _  -> expr
  | Binop (binop, e1, e2) when is_value e1 && is_value e2 -> 
    binop_step binop e1 e2
  | Binop (binop, e1, e2) when is_value e1 -> 
    binop_step binop e1 (simplify e2)
  | Binop (binop, e1, e2) -> 
    binop_step binop (simplify e1) e2
  | Let (var, e1, e2) when is_value e1 -> subst e2 e1 var
  | Let (var, e1, e2) -> Let(var, simplify e1, e2)
  | App (e1, e2) when is_value e1 -> app_step e1 e2
  | App (e1, e2) -> App(simplify e1, e2)
  | Fun _ -> expr
  

(* returns v1 op v2 when v1, v2 are values not expr's *)
and binop_step op v1 v2 = match op, v1, v2 with
  | Add, Int a, Int b -> Int (a + b)
  | Sub, Int a, Int b -> Int (a - b)
  | Mult, Int a, Int b -> Int (a * b)
  | Div, Int a, Int b -> Int (a / b)
  | And, Bool a, Bool b -> Bool (a && b)
  | Or, Bool a, Bool b -> Bool (a || b)
  | _ -> failwith binop_err

(* applies e2 to e1 if e1 is a function *)
and app_step e1 e2 = 
  match e1 with
  | Fun (var, e) -> subst e (simplify e2) var
  | _ -> failwith not_function_err


let rec pretty_print (expr:expr) : string = 
  match expr with
  | Int i -> string_of_int i
  | Bool b -> string_of_bool b
  | Var var -> var
  | Binop (op, e1, e2) -> binop_print op e1 e2
  | Let (var, e1, e2) -> 
      "let " ^ var ^ " = " ^ pretty_print e1 ^ " in " ^ pretty_print e2
  | Fun (var, e) ->
       "fun " ^ var ^ " -> " ^ pretty_print e
  | App (e1, e2) -> pretty_print e1 ^ pretty_print e2 


and binop_print op e1 e2 = 
  let h e1 e2 sym = pretty_print e1 ^ sym ^ pretty_print e2 in
  let pevh = h e1 e2 in
  match op with
  | Add -> pevh " + "
  | Sub -> pevh " - "
  | Mult -> pevh " * "
  | Div -> pevh " / "
  | And -> pevh " && "
  | Or -> pevh " || "



let rec eval e = 
  if is_value e then e 
  else eval @@ simplify e


let type_of s = 
  find_type Environment.empty s

let interp s = 
  let e = parse s in
  (*typecheck e;*)
  pretty_print @@ eval e
  