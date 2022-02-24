meta:
  id: game_difficulty
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/difficulty
doc: |
  Difficulty stat multipliers.

  Present in t_status.tbl.
seq:
  - id: difficulty
    type: difficulty
  - id: multiplier
    type: s2
