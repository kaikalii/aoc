# Experimental!
~ "git: github.com/amatgil/steal-gift" ~ AoCGet

$ ....#.....
$ .........#
$ ..........
$ ..#.......
$ .......#..
$ ..........
$ .#..^.....
$ ........#.
$ #.........
$ ......#...
Sample ←
Input  ← AoCGet 2024 6

# Start Obstacles ? Input
Parse ← ⊃(⊢⊚⌕@^|⊚⌕@#) ⊜∘⊸≠@\n
# ? Dir Pos Obstacles
Next ← ⟜+⨬∘(×1_¯1⇌)◡(∈:+)
# ? Start Obstacles
Path ← ⊙◌ °□⊢astar(¤⊙◌⍜°⊟Next)1(/↥↥⊃(<0_0)≤⊣⊙/↥) ⊟[¯1 0]
# ? Start Obstacles
Cycles ← ⍣(0◌Path)1

Part₁ ← ⧻⊚ ≡/××⊓≥≤0,¤/↥ ⤙(◴⍜⍉⊣ Path) Parse

# Doesn't work on real input 😔
Part₂ ← (
  ◡(⍜°⊚¬⊂) Parse # Potential obstacle positions
  /+ wait≡pool(
    ⊃⋅∘(⊂⊙⋅∘) # Add obstacle
    Cycles
  ) ⊙∩¤
)

⊟⊃Part₁Part₂ Sample
