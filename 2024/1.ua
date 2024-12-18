~ "aoc" ~ Day

$ 3   4
$ 4   3
$ 2   5
$ 1   3
$ 3   9
$ 3   3
Sample ←
Input  ← Day 1

Parse ← ⊜(⊜⋕⊸≠@ )⊸≠@\n
Part₁ ← /+⌵/-≡⍆⍉ Parse
Part₂ ← /+×⊃⊢(≡/+/⊞=)⍉ Parse

⊟⊃Part₁Part₂ Sample
