# Experimental!
~ "aoc" ~ Day

$ r, wr, b, g, bwu, rb, gb, br
$ 
$ brwrr
$ bggr
$ gbbr
$ rrbgbr
$ ubwu
$ bwurrg
$ brgr
$ bbrgwb
Sample ←
Input  ← Day 19

Parse ← ⊓(⊜□¬⊸⦷", "|⊜□⊸≠@\n) °$"_\n\n_"
Part₁ ← ⧻⊚wait≡pool◇(
  path(⍚↘⊙¤▽⊸±⊸(≡◇(×⊢⊃⌕⧻)⊙¤):|≍□"") □
  ±⧻⬚[]⊢
) :¤ Parse
Part₁ Input
