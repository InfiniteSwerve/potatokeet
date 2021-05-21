(*
DUNE FILE:
(executable
  (libraries core stdio )
    (name p43))
*)
open Base

(* returns true if all length 3 contiguous subarrays are divisible 
    by the index of their first element in the superarray *)
let sub_divisible arr =
  let p = [|2;3;5;7;11;13;17|] in
  let rec h arr i ln p = 
    if i > 7 then true else
    let num = arr.(i)*100+arr.(i+1)*10+arr.(i+2) in
    if num % p.(i-1) = 0 then h arr (i+1) ln p
    else  false
  in
  h arr 1 (Array.length arr) p


(* permutates start and adds it to total if it's sub_divisible *)
let () = 
  let start = ref [|0;1;2;3;4;5;6;7;8;9|] in
  let total = ref 0 in
  while (Permutations.add_array !start) <> Permutations.add_array ([|9;8;7;6;5;4;3;2;1;0|]) do
    if sub_divisible !start then begin total:= !total + (Permutations.add_array !start) end;
    start := Permutations.permute !start
  done;
  Stdio.printf "%d" !total

