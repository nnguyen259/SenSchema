meta:
  id: orb_line_list
  endian: le
  imports:
    - /components/cs3/character
doc: |
  Orbment layout: Order of slots.

  Slot ids go from 2 to 8. Slot 2 is the one left of the sub MQ slot, the rest
  are numbered in clockwise order.

  Present in t_orb.tbl.
seq:
  - id: character_id
    type: character
  - id: line_id
    type: u2
  - id: slot1_id
    type: s2
  - id: slot2_id
    type: s2
  - id: slot3_id
    type: s2
  - id: slot4_id
    type: s2
  - id: slot5_id
    type: s2
  - id: slot6_id
    type: s2
  - id: slot7_id
    type: s2
