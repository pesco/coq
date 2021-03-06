(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2018       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(************************************************************************)
(*                              EqDecide                               *)
(*   A tactic for deciding propositional equality on inductive types   *)
(*                           by Eduardo Gimenez                        *)
(************************************************************************)

open Eqdecide
open Stdarg

DECLARE PLUGIN "ltac_plugin"

TACTIC EXTEND decide_equality
| [ "decide" "equality" ] -> [ decideEqualityGoal ]
END

TACTIC EXTEND compare
| [ "compare" constr(c1) constr(c2) ] -> [ compare c1 c2 ]
END
