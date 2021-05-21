open Base

(* Returns the sum of the digits of an array*)
let add_array arr = 
  Array.map2_exn ~f:(fun x y -> x * (10**y) ) arr (Array.of_list_rev (List.range 0 10))
  |> Array.fold ~f:(+) ~init:0

(* Find the smallest element in arr to the right of i
   which is larger than what's at i*)
let find_small_right i arr =
  let small = arr.(i) in  
  let mx = ref 10 in
  let mxindx = ref (-1) in
  for indx=(i+1) to (Array.length arr) -1  do
    if arr.(indx) > small && arr.(indx) < !mx
      then 
        begin
        mxindx := indx;
        mx := arr.(indx);
        end
  done;
  !mxindx

(* Find the rightmost element which is smaller than the element to its right *)
let find_rightmost_smaller arr = 
  let j = (Array.length arr) -1  in
  let i = j-1 in
  let rec find_rightmost_smaller_h i j arr = 
    if arr.(j) > arr.(i) then i
    else if i =0 then (-1) else 
      find_rightmost_smaller_h (i-1) (j-1) arr
  in
  find_rightmost_smaller_h i j arr

(* reverses items in arr after index j *)
let rev_after left arr = 
  let left = ref left in
  let right = ref (Array.length arr -1) in
  while !left < !right do
    let tmp = arr.(!left) in
    arr.(!left) <- arr.(!right);
    arr.(!right) <- tmp;
    Int.incr left;
    Int.decr right;
  done

(* finds the next permutation of array arr  *)
let permute arr = 
  if (add_array arr) = (add_array [|9;8;7;6;5;4;3;2;1;0|]) then arr
  else 
  let i = find_rightmost_smaller arr in
  let j = find_small_right i arr in
  Array.swap arr i j;
  rev_after (i+1) arr;
  arr