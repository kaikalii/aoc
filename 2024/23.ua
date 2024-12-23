~ "aoc" ~ Day

$ kh-tc
$ qp-kh
$ de-cg
$ ka-co
$ yn-aq
$ qp-ub
$ cg-tb
$ vc-aq
$ tb-ka
$ wh-tc
$ yn-cg
$ kh-ub
$ ta-co
$ de-co
$ tc-td
$ tb-wq
$ wh-td
$ ta-ka
$ td-qp
$ aq-cg
$ wq-ub
$ ub-vc
$ de-ta
$ wq-aq
$ wq-vc
$ wh-yn
$ ka-de
$ kh-ta
$ co-tc
$ wh-qp
$ tb-vc
$ td-yn
Sample ←
Input  ← Day 23

# Parse and bind neighbors as a map fill.
# The unique keys are passed to the function.
Kv! ← (
  ⊜(⊜∘⊸≠@-)⊸≠@\n # Parse pairs
  ⊕⊓⊢□⊸⊛≡°⊟⊂⟜≡⇌  # Group into keys and lists of neighbors
  ⬚∘^0 ⤚map      # Map and fill
)
# Get neighbors of a node. Only valid inside Kv!
Neis ← °□get⊙°◌

Part₁ ← Kv!(
  ▽=@t⊸≡⊢                     # Get all that start with @t
  ⍚(≡⊂¤⟜(▽⊸≡/(∊Neis)⧅₂<Neis)) # Neighbor pairs that are neighbors
  ⧻◴≡⍆/◇⊂∘                    # Make trios and dedup
)

Part₂ ← (
  Kv!⍚(
    ⊂⟜Neis                  # Potential clique
    ▽≥⊸⊃(-2⧻|≡(/+∊:Neis)⟜¤) # Keep those with all adjacent neighbors
  )
  ⍆°□⊏⊢⍖⊸≡◇⧻ # Pick longest and sort
  /(⊂⊂)@,    # Format
)

□₂⊃Part₁Part₂ Input
