meta:
  id: comp_help_data
  endian: le
  encoding: UTF-8
doc: |
  Various descriptions.

  Present in t_itemhelp.tbl.
seq:
  - id: type
    type: u2
    enum: comp_help_type
  - id: text
    type: strz
  - id: value
    type: s4
enums:
  comp_help_type:
    1: comp_help_aoe_radius
    2: comp_help_aoe_line_size
    3: comp_help_heal_strength
    4: comp_help_buff_strength
    5: comp_help_craft_power_rating
    6: comp_help_art_power_rating
    7: comp_help_break_rating
    8: comp_help_unbalance_rating
    9: comp_help_unbalance_rating_mechs
