~ "aoc" ~ Day

Parse ← ⊜(⊙(□≡°□°/$"_ _")°$"_: _")⊸≠@\n
Part₁ ← (
  Parse
  ⊙◌⧻path(0°□⊏˜⨂|≍"out") "you"
)
Part₂ ← (
  Parse
  Path ← ⊙◌path(1°□⍣⊏[]˜⨂⊙◌|≍)
  ⊃{▽¬⊸≡◇(˜∊"fft") Path "svr""dac"
  | ▽¬⊸≡◇(˜∊"dac") Path"svr""fft"
  | Path"dac""fft"
  | Path"fft""dac"
  | ▽¬⊸≡◇(˜∊"fft") Path"dac""out"
  | ▽¬⊸≡◇(˜∊"dac") Path"fft""out"
  }
  ⍉↯3_2
  /+≡/×≡₀◇⧻
)

$ aaa: you hhh
$ you: bbb ccc
$ bbb: ddd eee
$ ccc: ddd eee fff
$ ddd: ggg
$ eee: out
$ fff: out
$ ggg: out
$ hhh: ccc fff iii
$ iii: out
Part₁
$ svr: aaa bbb
$ aaa: fft
$ fft: ccc
$ bbb: tty
$ tty: ccc
$ ccc: ddd eee
$ ddd: hub
$ hub: fff
$ eee: dac
$ dac: fff
$ fff: ggg hhh
$ ggg: out
$ hhh: out
Part₂
