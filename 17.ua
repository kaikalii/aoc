# Experimental!
~ "aoc" ~ Day

$ Register A: 729
$ Register B: 0
$ Register C: 0
$ 
$ Program: 0,1,5,4,3,0
Sample ←
Input  ← Day 17

Parse ← ⊓(
  ⋕{
    °$$ Register A: _
     $$ Register B: _
     $$ Register C: _
  }
| ⊜⋕⊸≠@,°$"Program: _"
) °$"_\n\n_"
A     ← ⊡0
B     ← ⊡1
C     ← ⊡2
Combo ← ⨬(⊡-4)∘⊸<4
Dv    ← ⌊÷⊃(ⁿ:2Combo)⋅A
Adv   ← ⍜A◌⤙Dv
Bxl   ← ⍜B◌⤙(⍜∩⋯⬚0≠⊙B)
Bst   ← ⍜B◌⤙(◿8Combo)
Jnz   ← ⨬⋅⊙⊙∘⊃⋅⊙∘-₂ ≠0◡⋅A
Bxc   ← ⍜B◌⤙(⍜∩⋯⬚0≠⊃B C ◌)
Out   ← ⊃⋅∘(⊂:◿8Combo)
Bdv   ← ⍜B◌⤙Dv
Cdv   ← ⍜C◌⤙Dv
Exec  ← ⨬(Adv|Bxl|Bst|Jnz|Bxc|Out|Bdv|Cdv)
# ? Regs Output Ptr Instrs
Next  ← ⊙⊙+₂ Exec °⊟↙2 ◡⋅⋅↘
Part₁ ← /$"_,_" ⋅⊙⋅◌ ⍢Next(<⧻:⋅⋅⊙∘) ⊙⊓[]0 Parse

Part₁ Input
