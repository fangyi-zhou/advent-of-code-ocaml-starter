open! Imports

module M = struct
  (* Type to parse the input into *)
  type t = unit

  (* Parse the input to type t, invoked for both parts *)
  let parse _inputs = ()

  (* Run part 1 with parsed inputs *)
  let part1 _ = ()

  (* Run part 2 with parsed inputs *)
  let part2 _ = ()
end

include M
include Day.Make (M)

(* Example input *)
let example = ""

(* Expect test for example input *)
let%expect_test _ = run example ; [%expect {| |}]
