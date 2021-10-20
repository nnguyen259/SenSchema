meta:
  id: t_orb
  endian: le
  encoding: UTF-8
  imports:
    - ../../headers/cs3
    - ../../enums/common
    - ../../enums/cs3
seq:
  - id: header
    type: cs3
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: header.info.num_entry
types:
  entry:
    seq:
      - id: header_name
        type: strz
      - id: length
        type: u2
      - id: data
        type:
         switch-on: header_name
         cases:
           '"BaseList"': base_list
           '"OrbLineList"': orb_line_list
        size: length
  base_list:
    seq:
      - id: character_id
        type: u2
        enum: cs3_enum::characters
      - id: num_line
        type: u2
      - id: slot1_element
        type: u2
        enum: common_enum::elements
      - id: slot2_element
        type: u2
        enum: common_enum::elements
      - id: slot3_element
        type: u2
        enum: common_enum::elements
      - id: slot4_element
        type: u2
        enum: common_enum::elements
      - id: slot5_element
        type: u2
        enum: common_enum::elements
      - id: slot6_element
        type: u2
        enum: common_enum::elements
      - id: slot7_element
        type: u2
        enum: common_enum::elements
  orb_line_list:
    seq:
      - id: character_id
        type: u2
        enum: cs3_enum::characters
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