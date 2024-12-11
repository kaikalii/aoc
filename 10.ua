# Experimental!
~ "aoc" ~ Day

$ 89010123
$ 78121874
$ 87430965
$ 96549874
$ 45678903
$ 32019012
$ 01329801
$ 10456732
Sample ←
Input  ← Day 10

Dirs  ← ⍉⊟°ℂ⁅ⁿ:i⇡4
Parse ← -@0⊜∘⊸≠@\n
# ? Start Map
Paths  ← ⊙◌path(▽=⊃(+1⊡|⤚⬚∞⊡ +Dirs¤)|=9⊡)
Solve! ← /+≡(^0Paths)⊙¤ ⊚⊸=0 Parse

Part₁ ← Solve!(⧻◴≡◇⊣)
Part₂ ← Solve!⧻

⊟⊃Part₁Part₂ Input
