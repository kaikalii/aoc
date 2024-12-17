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
Next ← ⟜+⍢(×1_¯1⇌|◡(∊:+))
# ? Start Obstacles
Path ← (
  ⤙(⊟[¯1 0]
    ◴⍜⍉⊣ ⊢ path(
      (¤⊙◌⍜°⊟Next)    # Single neighbor
    | /↥↥⊃(<0_0)≤⊣⊙/↥ # Out of bounds
    ))
  ▽⊸(≡/××⊓≥≤0,¤/↥) # Filter oob
)
# ? Start Obstacles
Cycles ← ⍣(0◌Path)1

Part₁ ← ⧻ Path Parse

Part₂ ← (
  ◡Path Parse
  /+ wait≡pool(
    ⊃⋅∘(⊂⊙⋅∘) # Add obstacle
    Cycles
  ) ⊙∩¤
)

⊟⊃Part₁Part₂ Sample
