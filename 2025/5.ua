~ "aoc" ~ Day

Parse ← ⊓⊜⋕⊜(⊟⊙+₁∩⋕°$"_-_") ∩⌞⊸≠@\n °˜$"_\n\n_"
Part₁ ← /+ ≡/↥ ≡₁/< ⊞≤ Parse
Part₂ ← (
  ⊙¤°˜⊂ ⍆◌Parse        # Rest AccFirst ?
  ∧(>◡⊓⊢(⊣⊣)           # Check for overlap
    ˜⊂⍥(˜⊟↥⊃∩⊣⋅⊢⊙°˜⊂⌟) # Merge ranges and join
  )
  /+≡/- # Count
)

Day 5
$ 3-5
$ 10-14
$ 16-20
$ 12-18
$ 
$ 1
$ 5
$ 8
$ 11
$ 17
$ 32
∩⊃Part₁ Part₂
