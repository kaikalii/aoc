~ "aoc" ~ Day

$ 1
$ 10
$ 100
$ 2024
Sample₁ ←
$ 1
$ 2
$ 3
$ 2024
Sample₂ ←
Input   ← Day 22

Parse ← ⊜⋕⊸≠@\n

Mix   ← ⍜∩⋯⬚0≠
Prune ← ◿16777216
Next  ← ∧(Prune Mix⌊⊸(×)) [64 1/32 2048]

Part₁ ← /+ ⍥Next2000 Parse

Part₂ ← (
  Parse
  ◿10⍉⇌[⍥⊸Next2000]
  ⊃(◴♭. ⍜♭₂⊛≡(⧈∘4⧈-)|↘0_4)
  /↥wait≡pool(/+≡(⬚0⊏⊗))⊙∩¤
)

⊟ Part₁ Sample₁ Part₂ Sample₂
