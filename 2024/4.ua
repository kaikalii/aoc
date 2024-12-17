~ "git: github.com/amatgil/steal-gift" ~ AoCGet

$ MMMSXXMASM
$ MSAMXMSMSA
$ AMXSXMAAMM
$ MSAMASMSMX
$ XMASAMXAMM
$ XXAMMXXAMA
$ SMSMSASXSS
$ SAXAMASAAA
$ MAMMMXMMMM
$ MXMXAXMASX
Sample ←
Input  ← AoCGet 2024 4

LinePat ← {
  ◡∩₄(⍉⇌)          # 4 others
  ⍉.≡↻°⊏⍉ ⬚@\W↙¯4. # 2 diagonals
  ∩¤⟜⇌"XMAS"       # Left/Right
}
XPat ← [◡∩⍉≡⇌.] [
  "M\WS"
  "\WA\W"
  "M\WS"]
Parse ← ⊜∘⊸≠@\n
Solve ← /+♭ ≡◇⌕⊙¤ ⊙Parse
Part₁ ← Solve LinePat
Part₂ ← Solve XPat

⊟⊃Part₁Part₂ Sample
