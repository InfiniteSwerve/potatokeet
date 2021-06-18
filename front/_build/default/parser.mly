
(* Files added to header of generated parser file *)
%{
open Ast 

%}

(* Declared tokens to be made by lexer and used in parser *)

%token <int> INT
%token <string> VAR
%token TRUE
%token FALSE
%token FUN
%token RARROW 
%token ADD
%token SUB
%token MULT
%token DIV
%token LET 
%token EQUAL
%token IN
%token LPAREN
%token RPAREN
%token SCOLON
%token AND
%token OR 
%token EOF


(* Precedence declarations: %nonassoc means not associative 
                            %left means left associative
                            %right means right associative
                            
    Precedences go from lowest (top) to highest (bottom), so ADD is lower 
    precedence than MULT. Basically, this is your PEMDAS declaration  *)
%nonassoc IN
%right RARROW 
%left ADD SUB
%left MULT DIV
%left AND OR

%start <Ast.expr> eval

%%

eval:
    | e = expr; EOF { e }
    ;

expr:
    | e = simple_expr { e }
    | e1 = expr; op = binop; e2 = expr { Binop (op, e1, e2) }
    | FUN; var = VAR; RARROW; e = expr { Fun (var, e) } 
    | LET; var = VAR; EQUAL; e1 = expr; IN; e2 = expr { Let (var, e1, e2) }
    | e1 = expr; e2 = expr; SCOLON { App (e1, e2) }
    | LPAREN; e = expr; RPAREN { e }

simple_expr:
    | i = INT { Int i }
    | var = VAR { Var var }
    | TRUE { Bool true }
    | FALSE { Bool false }



%inline binop:
    | ADD { Add }
    | SUB { Sub }
    | MULT { Mult }
    | DIV { Div }
    | AND { And }
    | OR { Or }
 