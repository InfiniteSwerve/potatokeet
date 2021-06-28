
(* Files added to header of generated parser file *)
%{
open Ast 

%}

(* Declared tokens to be made by lexer and used in parser *)

%token <int> INT
%token <string> VAR
%token TRUE
%token FALSE
%token TBOOL
%token TINT
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
%token COLON
%token AND
%token OR 
%token EOF


(* Precedence declarations: %nonassoc means not associative 
                            %left means left associative
                            %right means right associative
                            
    Precedences go from lowest (top) to highest (bottom), so ADD is lower 
    precedence than MULT. Basically, this is your PEMDAS declaration  *)

%nonassoc IN
%left ADD SUB
%left MULT DIV
%left AND OR



%start <Ast.expr> eval

%%


eval:
    | e = expr; EOF { e }
    ;

expr:
    | i = INT { Int i }
    | var = VAR { Var var }
    | TRUE { Bool true }
    | FALSE { Bool false }
    | e1 = expr; op = binop; e2 = expr { Binop (op, e1, e2) }   
    | LET; var = VAR; EQUAL; e1 = expr; IN; e2 = expr { Let (var, e1, e2) }
    | e1 = expr; e2 = expr { App (e1, e2) }
    | pexpr = paren_exp { pexpr }

paren_exp:
    | LPAREN; FUN; var = VAR; COLON; t = typ; RARROW; e = expr; RPAREN { Fun (var, t, e) }
    | LPAREN; SUB; i = INT; RPAREN { Int (-i) }
    | LPAREN; e = expr; RPAREN { e }
    


typ:
    | TBOOL { TBool }
    | TINT { TInt }

%inline binop:
    | ADD { Add }
    | SUB { Sub }
    | MULT { Mult }
    | DIV { Div }
    | AND { And }
    | OR { Or }
 
