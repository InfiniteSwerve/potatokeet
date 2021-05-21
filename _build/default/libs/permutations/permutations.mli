val add_array : int array -> int
(* turns an array into the int of it's elements
   e.g. [|1;2;3|] -> 123 *)


val permute : int array -> int array
(* finds the next permutation of the input 
   in lexographic order. returns input if no 
    larger permutations exist.
   e.g. [|1;2;3|] -> [|1;3;2|] *)
