~ "aoc" ~ Day

$ p=0,4 v=3,-3
$ p=6,3 v=-1,-3
$ p=10,3 v=-1,2
$ p=2,0 v=2,-1
$ p=0,0 v=1,3
$ p=3,0 v=-2,-2
$ p=7,6 v=-1,-3
$ p=3,0 v=-1,-2
$ p=9,3 v=2,3
$ p=7,3 v=-1,2
$ p=2,4 v=2,-3
$ p=9,5 v=-3,-3
Sample ←
Input  ← Day 14

Parse ← ⊜(⇌↯2_2⋕{°$"p=_,_ v=_,_"})⊸≠@\n
Size  ← +1/↥≡⊣
Part₁ ← (
  Parse
  ⊃Size(≡⊣⍥≡\+100)              # Run
  ⍉⬚0↙⟜(°⊚◿¤)                   # Raster
  ≡↙⊙¤⊸(× [∩⊸¯ 1_¯1 1_1] ¤⌊÷2△) # Split
  /× ≡(/+♭)                     # Count
)
Part₂ ← (
  Parse
  ⊃Size(≡≡⊣⇌[⍥⊸≡\+]8000) # Run
  ⬚0≡°⊚◿¤¤               # Raster
  ⊢⊚=2 ≡(⧻◴♭)            # Find where all unique
)
⊟ ⊃Part₁Part₂ Input
