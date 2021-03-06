  (* Testing *)
(* blank test for easy access:
Alcotest.(check string)   "" "" (interp "")
*)
open Potato 
let arith_test () = 
  Alcotest.(check string)   "unit" "1" (interp "1");
  Alcotest.(check string)   "add"  "2" (interp "1+1");
  Alcotest.(check string)   "long add" "5" (interp "1+1+1+1+1");
  Alcotest.(check string)   "unit sub" "-1" (interp "0-1");
  Alcotest.(check string)   "long sub" "-5" (interp "0-1-1-1-1-1");
  Alcotest.(check string)   "unit neg" "-1" (interp "(-1)");
  Alcotest.(check string)   "neg in sub" "-2" (interp "(-1)-1");
  Alcotest.(check string)   "unit mult" "4" (interp "2*2");
  Alcotest.(check string)   "long mult" "32" (interp "2*2*2*2*2");
  Alcotest.(check string)   "unit div" "1" (interp "1/1");
  Alcotest.(check string)   "neg num div" "-1" (interp "(-1)/1");
  Alcotest.(check string)   "neg denom div" "-1" (interp "1/(-1)");
  Alcotest.(check string)   "frac div" "0" (interp "1/2")
let bool_test () = 
  Alcotest.(check string)   "unit true" "true" (interp "true");
  Alcotest.(check string)   "unit false" "false" (interp "false");
  Alcotest.(check string)   "t&t" "true" (interp "true && true");
  Alcotest.(check string)   "t&f" "false" (interp "true && false");
  Alcotest.(check string)   "f|t" "true" (interp "false || true");
  Alcotest.(check string)   "f|f" "false" (interp "false || false");
  Alcotest.(check string)   "nested booleans" "true" (interp "true || (true && false)")


let function_test () = 
  Alcotest.(check string)   "function unit" "fun: int -> int" (interp "(fun x:int -> x)");
  Alcotest.(check string)   "identity function application: int" "1" (interp "(fun x:int -> x) 1");
  Alcotest.(check string)   "identity function application: bool" "true" (interp "(fun x:bool -> x) true");
  Alcotest.(check string)   "identity function application: function" "fun: int -> int" (interp "(fun x:(Lam int,int) -> x) (fun x:int -> x)");
  Alcotest.(check string)   "constant function application: int" "1" (interp "(fun x:int -> 1) 2");
  Alcotest.(check string)   "currying application" "1" (interp "((fun x:(Lam int, int) -> (fun y:int -> y))(fun x:int -> x))1 ");
  Alcotest.(check string)   "currying addition" "3" (interp "((fun x:int -> (fun y:int -> x + y))1)2 ");

  (* Potato can't handle infinitely recursive types because it needs explicit type declarations *)
 (* Alcotest.(check string)   "y-combinator" "5 (fun x -> ((fun y -> (y (x x))) (fun y -> (y (x x)))))" 
                                (interp "let Y = (fun x:int -> ((fun y -> (y (x x))) (fun y -> (y (x x))))) in 5 Y");*)                               
  Alcotest.(check string)   "function variable definition application" "2" (interp "let x = 2 in let f = (fun y:int -> x) in (f 1)");
  Alcotest.(check string)   "function variable definition application" "3" (interp "let x = 2 in let f = (fun y:int -> x + y) in (f 1)")

let scoping_test () = 
  Alcotest.(check string)   "basic scoping test" "1" (interp "let x = 1 in let f = (fun y:int -> x) in let x = 2 in f x");
  Alcotest.(check string)   "basic scoping test" "4" (interp "let x = 1 in let c = 3 in let f = (fun y:int ->  c + x) in let x = 2 in f x");
  Alcotest.(check string)   "basic scoping test" "1" (interp "let x = 0 in let x = 1 in let f = (fun y:int -> x) in let x = 2 in f x")



let () = 
  let open Alcotest in
  run "tests" [
    "arith_case", [
      test_case "arithmetic"    `Quick arith_test;
    ];
    "bool_case", [
      test_case "booleans"      `Quick bool_test;
    ];
    "function_case", [
      test_case "functions"     `Quick function_test;
    ];
    "scoping_case", [
      test_case "scoping"       `Quick scoping_test;
    ]
  ]
  