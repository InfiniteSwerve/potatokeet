
(* The type of tokens. *)

type token = 
  | VAR of (string)
  | TRUE
  | SUB
  | RPAREN
  | RARROW
  | OR
  | MULT
  | LPAREN
  | LET
  | INT of (int)
  | IN
  | FUN
  | FALSE
  | EQUAL
  | EOF
  | DIV
  | COLON
  | AND
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val eval: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
