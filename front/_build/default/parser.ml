
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR of (
# 11 "parser.mly"
       (string)
# 11 "parser.ml"
  )
    | TRUE
    | SUB
    | SCOLON
    | RPAREN
    | RARROW
    | OR
    | MULT
    | LPAREN
    | LET
    | INT of (
# 10 "parser.mly"
       (int)
# 25 "parser.ml"
  )
    | IN
    | FUN
    | FALSE
    | EQUAL
    | EOF
    | DIV
    | AND
    | ADD
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState33
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState13
  | MenhirState10
  | MenhirState6
  | MenhirState3
  | MenhirState0

# 3 "parser.mly"
  
open Ast 


# 80 "parser.ml"

let rec _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | EOF | IN | RPAREN | SCOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (var : (
# 11 "parser.mly"
       (string)
# 272 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 54 "parser.mly"
                                       ( Fun (var, e) )
# 277 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | ADD | EOF | IN | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 69 "parser.mly"
          ( Sub )
# 317 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 322 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | ADD | AND | DIV | EOF | IN | MULT | OR | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 73 "parser.mly"
         ( Or )
# 354 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 359 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | MenhirState33 | MenhirState31 | MenhirState28 | MenhirState30 | MenhirState13 | MenhirState15 | MenhirState18 | MenhirState27 | MenhirState25 | MenhirState21 | MenhirState23 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SCOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState18 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 56 "parser.mly"
                                   ( App (e1, e2) )
# 400 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | ADD | DIV | EOF | IN | MULT | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 70 "parser.mly"
           ( Mult )
# 442 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 447 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | ADD | AND | DIV | EOF | IN | MULT | OR | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 72 "parser.mly"
          ( And )
# 479 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 484 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | ADD | DIV | EOF | IN | MULT | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 71 "parser.mly"
          ( Div )
# 520 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 525 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | ADD | EOF | IN | RPAREN | SCOLON | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = let op = 
# 68 "parser.mly"
          ( Add )
# 565 "parser.ml"
             in
            
# 53 "parser.mly"
                                       ( Binop (op, e1, e2) )
# 570 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState28 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | FUN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | LET ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | EOF | IN | RPAREN | SCOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (var : (
# 11 "parser.mly"
       (string)
# 673 "parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 55 "parser.mly"
                                                      ( Let (var, e1, e2) )
# 678 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState31 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 57 "parser.mly"
                               ( e )
# 719 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADD ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | AND ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DIV ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState33 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 48 "parser.mly"
                    ( e )
# 751 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.expr)) = _v in
            Obj.magic _1
        | FALSE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FUN ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | LET ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | OR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_simple_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (e : (Ast.expr)) = _v in
    let _v : (Ast.expr) = 
# 52 "parser.mly"
                      ( e )
# 790 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 892 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (var : (
# 11 "parser.mly"
       (string)
# 900 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 61 "parser.mly"
                ( Var var )
# 905 "parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.expr) = 
# 62 "parser.mly"
           ( Bool true )
# 916 "parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | FUN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | LET ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 996 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 10 "parser.mly"
       (int)
# 1004 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 60 "parser.mly"
              ( Int i )
# 1009 "parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | FUN ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | LET ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.expr) = 
# 63 "parser.mly"
            ( Bool false )
# 1068 "parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and eval : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 1118 "parser.ml"
