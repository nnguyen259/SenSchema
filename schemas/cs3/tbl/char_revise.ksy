meta:
  id: char_revise
  endian: le
  encoding: UTF-8
doc: |
  Stat multipliers that apply on top of the global difficulty modifier,
  in percent. Only used for certain enemies and only on Hard and Nightmare.

  Present in t_status.tbl.
seq:
  - id: script
    type: strz
    doc: |
      Enemy script, references status in t_mons.tbl.
  - id: hp
    type: u2
  - id: strength
    type: u2
  - id: defence
    type: u2
  - id: ats
    type: u2
  - id: adf
    type: u2
  - id: speed
    type: u2
  - id: break_multiplier
    type: u2
