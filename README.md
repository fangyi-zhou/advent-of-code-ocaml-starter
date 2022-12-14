# Advent of code with OCaml

## Getting started

1. Create a repository using this template
1. Put your session cookie into `.session`
1. (Optional) Put the year into `.year` (e.g. 2022)

## HowTo

For each day, first specify a type `t` for the parsed input, and then
there are 3 functions to implement:

- `input : string -> t`, a function to parse the input into a user specified
    type `t`
- `part1 : t -> unit` and `part2 : t -> unit`, functions to execute both parts

The functor `Day.Make` generates a function `run` to run the pipeline.

```ocaml
    val run : ?only_part1:bool -> ?only_part2:bool -> string -> unit
```

The main executable, `aoc`, can be invoked via

```bash
    dune exec aoc DAY
```

which will invoke the `run` function for that DAY, with input taken from
`inputs` directory.
If no input file is present, then the input file would be downloaded using your
session cookie.
