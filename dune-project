(lang dune 2.7)
(name aoc)
(generate_opam_files true)
(package
  (name aoc)
  (depends
    cohttp-lwt-unix
    lwt_ssl
    ppx_expect
  )
)
