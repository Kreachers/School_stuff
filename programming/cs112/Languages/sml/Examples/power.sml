(* $Id: power.sml,v 321.1 2002-02-07 12:58:23-08 - - $ *)
(*
* Power function.
* Raise base to the power of exp.
* Run in O(log2 exp) time rather than multiplying out
* everything in O(exp) time.
*)

fun power( base, exp ) =
   let
      fun power'( partial, base, exp ) =
         let
            val half_exp = exp div 2;
            val next = if exp mod 2 = 0 then 1.0 else base;
         in
            if half_exp = 0
               then partial * next
               else power'( partial * next, base * base, half_exp )
         end;
   in
      if exp = 0 then
         1.0
      else if exp < 0 then
         power'( 1.0, 1.0 / base, ~ exp )
      else
         power'( 1.0, base, exp )
   end;

power(    2.0,  4 );
power(    2.0, 10 );
power(    2.0, ~4 );
power(    3.0,  4 );
power(   10.0, 10 );
power( 1234.0, 89 );

