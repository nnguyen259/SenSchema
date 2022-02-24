meta:
  id: difficulty
  endian: le
seq:
  - id: difficulty_id
    type: u2
    enum: difficulties
enums:
  difficulties:
    0: normal
    1: very_easy
    2: easy
    3: hard
    4: nightmare
