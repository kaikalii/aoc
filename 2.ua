~ "git: github.com/amatgil/steal-gift" ~ AoCGet

$ 7 6 4 2 1
$ 1 2 7 8 9
$ 9 7 6 2 1
$ 1 3 2 4 5
$ 8 6 4 4 1
$ 1 3 6 7 9
Sample ←
Input  ← AoCGet 2024 2

IsSafe ← ×⊃(/×/≠⊞<1_4⌵|=1⧻◴±)≡/-◫2

Parse ← ⊜(□⊜⋕⊸≠@ )⊸≠@\n
Part₁ ← /+≡◇IsSafe Parse
Part₂ ← /+≡◇(/↥≡(IsSafe⍜↻↘₁)⊙¤°⊏) Parse

⊟⊃Part₁Part₂ Input
