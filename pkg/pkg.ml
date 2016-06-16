#!/usr/bin/env ocaml
#use "topfind";;
#require "topkg"
open Topkg

let () =
  Pkg.describe "hmap" @@ fun c ->
  Ok [ Pkg.mllib "src/hmap.mllib";
       Pkg.test "test/test"; ]
