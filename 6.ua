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
# Visited End ? Start Obstacles
Go ← ⊓(◴|⊙◌⊟Next) ⍢(
  ⊂⊙◡⊟                # Record point
  ⊙⊙(↥0_0↧⊙⊸/↥) ⊙Next # Step and clamp
| ◡(¬∈⊙⊟)             # Check visited
) °△0_2_2 [¯1 0]

Part₁ ← ⧻◴⍜⍉⊣ ⊙◌ Go Parse

# Doesn't work on real input 😔
Part₂ ← (
  ◡(⍜°⊚¬⊂) Parse # Potential obstacle positions
  /+ wait≡pool(
    ⊃⋅∘(⊂⊙⋅∘) # Add obstacle
    ∈ Go      # Check
  ) ⊙∩¤
)

⊟⊃Part₁Part₂ Sample
