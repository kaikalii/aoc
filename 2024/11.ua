~ "aoc" ~ Day

Sample ← $ 125 17
Input  ← Day 11

Split   ← ⌊⊃÷◿⊸(⍜ₙ(÷2⌈)10+1)
EvenLen ← ¬◿2↥0⌈ₙ10+1
Blink   ← ♭⨬(⨬(×2024|⊟Split)⊸EvenLen|1)⊸=0
# ? Numbers Counts
Next ← (
  ⊃⊛(:×⊙: ⍚°▽ ⍚memoBlink)
  ∩/◇⊂ ⊓⊕⊢⊕/+ ⟜:
)
Times ← ⊓◌/+ ⍥Next⊙(:°▽ ⊜⋕⊸≠@ )

Times 6 Sample
Times 25 Sample
Times 25 Input
Times 75 Input
