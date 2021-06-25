(* This is slightly modified version of iris/theories/heap_lang/lib/counter.v *)
From iris.proofmode Require Import tactics.
From iris.algebra Require Import lib.frac_auth auth.
From iris.base_logic.lib Require Export invariants.
From iris.program_logic Require Export weakestpre.
From iris.heap_lang Require Export lang lib.par.
From iris.heap_lang Require Import proofmode notation.

Definition incr : expr :=
λ: "l", let: "n" := !"l" in
        "l" <− "n" + #1.

Lemma incr_spec (l : loc) (n : Z)
