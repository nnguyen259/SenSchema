meta:
  id: status_revise
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/difficulty
doc: |
  Stat multipliers that apply on top of the global difficulty multiplier,
  in percent. Only used on Hard and Nightmare mode.

  Present in t_status.tbl.
seq:
  - id: difficulty
    type: difficulty
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
