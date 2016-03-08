#!/usr/bin/env ocaml
#directory "pkg"
#use "topkg-ext.ml"

module Config = struct
  include Config_default
  let vars =
    [ "NAME", "hmap";
      "VERSION", Git.describe ~chop_v:true "master";
      "PKG_WWW", "http://erratique.ch/software/hmap" ]
end
