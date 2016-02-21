(*---------------------------------------------------------------------------
   Copyright (c) 2016 Daniel C. Bünzli. All rights reserved.
   Distributed under the ISC license, see terms at the end of the file.
   %%NAME%% v%%VERSION%%
  ---------------------------------------------------------------------------*)

let test () =
  let ik = Hmap.Key.create () in
  let sk = Hmap.Key.create () in
  let uk = Hmap.Key.create () in
  let m = Hmap.(empty |> add ik 5 |> add sk "hey") in
  assert (Hmap.mem ik m);
  assert (Hmap.mem sk m);
  assert (not (Hmap.mem uk m));
  assert (Hmap.find ik m = Some 5);
  assert (Hmap.get ik m = 5);
  assert (Hmap.find sk m = Some "hey");
  assert (Hmap.get sk m = "hey");
  assert (Hmap.find uk m = None);
  assert (try Hmap.get uk m; false with Invalid_argument _ -> true);
  Printf.printf "Success!%!";
  ()

let () = test ()

(*---------------------------------------------------------------------------
   Copyright (c) 2016 Daniel C. Bünzli

   Permission to use, copy, modify, and/or distribute this software for any
   purpose with or without fee is hereby granted, provided that the above
   copyright notice and this permission notice appear in all copies.

   THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
   WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
   MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
   ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
  ---------------------------------------------------------------------------*)
