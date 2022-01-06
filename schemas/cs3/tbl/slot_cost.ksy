meta:
  id: slot_cost
  endian: le
doc: |
  Cost to unlock orbment slots.

  Present in t_slot.tbl.
seq:
  - id: unlock_position
    type: u2
  - id: slot_level
    type: u2
  - id: earth_sepith_cost
    type: u2
  - id: water_sepith_cost
    type: u2
  - id: wind_sepith_cost
    type: u2
  - id: fire_sepith_cost
    type: u2
  - id: time_sepith_cost
    type: u2
  - id: space_sepith_cost
    type: u2
  - id: mirage_sepith_cost
    type: u2
