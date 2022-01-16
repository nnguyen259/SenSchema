meta:
  id: slot_ep
  endian: le
  imports:
    - /components/cs3/character
doc: |
  Amount of EP gained by unlocking a slot.

  Present in t_slot.tbl.
seq:
  - id: character_id
    type: character
  - id: slot_level
    type: u2
  - id: base_ep
    type: u2
  - id: increase_1
    type: u2
  - id: increase_2
    type: u2
  - id: increase_3
    type: u2
  - id: increase_4
    type: u2
  - id: increase_5
    type: u2
  - id: increase_6
    type: u2
  - id: increase_7
    type: u2
