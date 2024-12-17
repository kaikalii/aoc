~ "aoc" ~ Day

$ AAAA
$ BBCD
$ BBCC
$ EEEC
Sample₁ ←
$ AAAAAA
$ AAABBA
$ AAABBA
$ ABBAAA
$ ABBAAA
$ AAAAAA
Sample₂ ←
$ RRRRIICCFF
$ RRRRIICCCF
$ VVRRRCCFFF
$ VVRCCCJFFF
$ VVVVCJJCFE
$ VVIVCCJJEE
$ VVIIICJJEE
$ MIIIIIJJEE
$ MIIISIJEEE
$ MMMISSJEEE
Sample₃ ←
Input   ← Day 12

Parse    ← +1⍜♭⊛ ⊜∘⊸≠@\n
Areas    ← ⊜⧻.
Perims   ← -⊜⊃(⧻⊚=1≡/+⌵≡/-⧅≠2|×4⧻):°⊡
OriSides ← /++ ∩≡(/+◌°▽) ⊃⧈<⧈>
Sides ← (
  ⍜⊜□(⍚(▽⧻):+1°⊏).   # Disambiguate
  ⊃(⍆◴♭|⌝↘¯⟜⌝↘1_1)   # Pad
  ≡(+∩OriSides⟜⍉=)⊙¤ # Count horiz and vert
)

Part₁ ← /+× ⊃Areas Perims Parse
Part₂ ← /+× ⊃Areas Sides Parse

⊟⊃Part₁Part₂ Sample₁
⊟⊃Part₁Part₂ Sample₂
⊟⊃Part₁Part₂ Sample₃
⊟⊃Part₁Part₂ Input
