~ "aoc" ~ Day

Parse ← ⍥¯=@R ⊜(⊙⋕°⊂)⊸≠@\n
Turn  ← ⧻⊚=0◿100\+⊂50
Part₁ ← Turn Parse
Part₂ ← Turn ˜▽°× Parse

Day 1
$ L68
$ L30
$ R48
$ L5
$ R60
$ L55
$ L1
$ L99
$ R14
$ L83
∩⊃Part₁ Part₂
