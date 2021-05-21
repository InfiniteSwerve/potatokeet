open Base

let mx = 1_000_000
let primes = (Prime_sieve.sieve mx)
  |> List.sort ~compare:Int.compare
  |> Array.of_list  

(* sums the first n items in arr starting at i   *)
let rec sum_first_n arr i n accum = 
  if n = 0 then accum 
  else sum_first_n arr (i+1) (n-1) (accum + arr.(i))

let num = 
  let accum = ref 0 in
  let curr_len = ref 0 in
  let max_len = ref 0  in
  let max_prime = ref 0 in
  let i = ref 0 in
  let j = ref 0 in

  (* sums the first max_len items starting at i
     until the sum is greater than mx. 
     if the sum at any point is prime then that's the new max. *)
  while primes.(!i) < mx/21 do
    accum := sum_first_n primes !i !max_len 0;
    j := !i + !max_len;
    curr_len := !max_len;
    while !accum < mx do 
      if Array.mem primes !accum ~equal:Int.equal then
        begin
          max_prime := !accum;
          max_len := !curr_len;
        end;
      accum := !accum + primes.(!j);
      Int.incr curr_len;
      Int.incr j; 
    done;
    Int.incr i
  done;
  !max_prime



let () = 
  Stdio.printf "%d" num