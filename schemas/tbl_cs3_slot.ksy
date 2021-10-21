meta:
  id: t_slot
  endian: le
  encoding: UTF-8
  imports:
    - enums_cs3
types:
  slot_ep:
    seq:
      - id: character_id
        type: u2
        enum: enums_cs3::characters
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
  slot_cost:
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
