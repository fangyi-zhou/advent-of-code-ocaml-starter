(* Anything helper functions that would be imported for each module *)

let print_endline_int i = print_endline (Int.to_string i)

let time f =
  let before = Unix.gettimeofday () in
  let result = f () in
  let after = Unix.gettimeofday () in
  print_endline (Printf.sprintf "%f" (after -. before)) ;
  result
