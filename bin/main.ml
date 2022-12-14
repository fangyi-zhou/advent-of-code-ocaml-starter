open Aoc
open Utils

let () =
  let args = Sys.argv in
  let day = args.(1) in
  let input_file = Printf.sprintf "inputs/%s.in" day in
  if not @@ Caml.Sys.file_exists input_file then
    download_input day input_file ;
  let file = In_channel.open_text input_file in
  let inputs = In_channel.input_all file in
  let (module Day : Day.S) =
    match day with
    | "1" -> (module Day1)
    | "2" -> (module Day2)
    | "3" -> (module Day3)
    | "4" -> (module Day4)
    | "5" -> (module Day5)
    | "6" -> (module Day6)
    | "7" -> (module Day7)
    | "8" -> (module Day8)
    | "9" -> (module Day9)
    | "10" -> (module Day10)
    | "11" -> (module Day11)
    | "12" -> (module Day12)
    | "13" -> (module Day13)
    | "14" -> (module Day14)
    | "15" -> (module Day15)
    | "16" -> (module Day16)
    | "17" -> (module Day17)
    | "18" -> (module Day18)
    | "19" -> (module Day19)
    | "20" -> (module Day20)
    | "21" -> (module Day21)
    | "22" -> (module Day22)
    | "23" -> (module Day23)
    | "24" -> (module Day24)
    | "25" -> (module Day25)
    | _ -> failwith "invalid day"
  in
  Day.run inputs ; In_channel.close file
