(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*               Pierre Weis, projet Cristal, INRIA Rocquencourt       *)
(*                                                                     *)
(*  Copyright 2001 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  only by permission.                                                *)
(*                                                                     *)
(***********************************************************************)
type registre = int;;

type op�rande =
   | Reg of registre
   | Imm of int;;

type instruction =
   | Op of op�ration * registre * op�rande * registre
   | Jmp of op�rande * registre
   | Braz of registre * int
   | Branz of registre * int
   | Scall of int
   | Stop

and op�ration =
  | Load | Store | Add | Mult | Sub | Div
  | And | Or | Xor | Shl | Shr
  | Slt | Sle | Seq;;

val nombre_de_registres : int;;
val sp : int;;
val ra : int;;
val taille_du_mot : int;;