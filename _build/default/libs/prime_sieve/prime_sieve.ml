open Base

let sieve n = 
  let l = List.range 2 (n+1) in
  let rec better_sieve (l:int list) (primes:int list) (big:int): int list = 
    let filter (p:int) (lis:int list) = (List.filter ~f:(fun x -> x % p <> 0) lis) in
    match l with 
    | [] -> primes
    | hd::tl -> if hd**2 > big then (primes@[hd]@tl)
    else better_sieve (filter hd tl) (hd::primes) big
  in better_sieve l [] n 