(*
   Copyright 2008-2019 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)
module LowStar.RST.Array.Loops


module R = LowStar.Resource
module RST = LowStar.RST
module A = LowStar.Array
module AR = LowStar.RST.Array
module HS = FStar.HyperStack
module HST = FStar.HyperStack.ST
module P = LowStar.Permissions
module U32 = FStar.UInt32
module L = LowStar.RST.Loops

open FStar.Mul

open FStar.Tactics
open FStar.Tactics.CanonCommMonoidSimple.Equiv

#set-options "--z3rlimit 40 --max_fuel 0 --max_ifuel 0"

let iteri #a b context loop_inv f len =
  (**) let h0 = HST.get() in
  (**) let correct_inv (h : RST.rmem (Ghost.reveal (Ghost.hide ((R.(AR.array_resource b <*> Ghost.reveal context)))))) (i : nat) =
  (**)  loop_inv (RST.focus_rmem #(Ghost.reveal (Ghost.hide ((R.(AR.array_resource b <*> Ghost.reveal context))))) h (Ghost.reveal context)) i /\
  (**)  RST.focus_rmem #(Ghost.reveal (Ghost.hide ((R.(AR.array_resource b <*> Ghost.reveal context))))) h (AR.array_resource b) ==
          RST.focus_rmem  #(R.(AR.array_resource b <*> Ghost.reveal context)) (RST.mk_rmem (R.(AR.array_resource b <*> Ghost.reveal context)) h0) (AR.array_resource b)
  (**) in
  let correct_f (i:U32.t{U32.(0 <= v i /\ v i < A.vlength b)})
    : RST.RST unit
      (Ghost.reveal (Ghost.hide (R.(AR.array_resource b <*> Ghost.reveal context))))
      (fun _ -> Ghost.reveal (Ghost.hide (R.(AR.array_resource b <*> Ghost.reveal context))))
      (requires (fun h0 ->
        correct_inv h0 (U32.v i)
      ))
      (ensures (fun h0 _ h1 -> U32.(
        correct_inv h0 (v i) /\
        correct_inv h1 (v i + 1)
      )))
  =
    let h0 = HST.get () in
    RST.focus_rmem_equality (R.(AR.array_resource b <*> Ghost.reveal context)) (Ghost.reveal context) h0; (* TODO: trigger automatically ?*)
    let x = RST.rst_frame
      (fun () -> R.(AR.array_resource b <*> Ghost.reveal context))
      #_ #_
      (fun _ -> R.(AR.array_resource b <*> Ghost.reveal context))
      #_ #(fun () -> Ghost.reveal context)
      (fun _ -> AR.index b i)
    in
    let f' () : RST.RST unit // TODO: figure out why we cannot remove this superfluous let-binding
      (Ghost.reveal context)
      (fun _ -> Ghost.reveal context)
      (fun h0 -> loop_inv h0 (U32.v i))
      (fun h0 _ h1 -> loop_inv h0 (U32.v i) /\ loop_inv h1 (U32.v i + 1))
      =
      f i x
    in
    RST.rst_frame
      (fun _ -> R.(AR.array_resource b <*> Ghost.reveal context))
      #_ #_
      (fun _ -> R.(AR.array_resource b <*> Ghost.reveal context))
      #_ #(fun () -> AR.array_resource b)
      f'
  in
  L.for
    0ul
    len
    (Ghost.hide (R.(AR.array_resource b <*> Ghost.reveal context)))
    correct_inv
    correct_f
