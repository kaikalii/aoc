~ "git: github.com/amatgil/steal-gift" ~ AoCGet

$ xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
Sample ←
Input  ← AoCGet 2024 3

Regex   ← ⬚@0regex $ mul\((\d+),(\d+)\)|do\(\)|don't\(\)
Control ← {"don't()""do()"}
Part₁   ← /+≡/× ⋕↘0_1 Regex
Part₂ ← (
  ≡°⊂ Regex
  ×⊓(↘1\(↥0↧1+)⊂1/-⊞≍Control)⋕
  /+≡/×
)
⊟⊃Part₁Part₂ Input
