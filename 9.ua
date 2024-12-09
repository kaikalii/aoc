# Experimental!
~ "aoc" ~ Day

Sample ← $ 2333133121414131402
Input  ← Day 9

Parse    ← ▽: (⍜▽(+1⇡⧻).¬◿2) °⊏ ≡⋕ # Decompress (0 is empty)
Checksum ← /+×°⊏ ↥0-1

Part₁ ← Checksum ↙⊃(⧻⊚±|⍜▽(↙⧻)⊸¬ ⟜(▽⊸± ⇌)) Parse
Part₂ ← Checksum ∧(
  ⊸⊓°□(×0.⊜□=0:°⊏)                 # Collect empty spots
  ≥⊃(⧻|≡◇(⧻⊚>) ⊃⋅∘(</↧⊙⋅∘)|⊙⋅∘)    # Find usable spots
  ⍣(⍜⊏⇌ ⊂↙◡⋅⧻ ⊃(°□⊡⊙⋅∘)⋅∘ ⊢⊚|⋅⋅⋅∘) # Swap file and empty
)⊸(⇌⊜□:°⊏) Parse                   # Get file indices

⊟⊃Part₁Part₂ Sample
