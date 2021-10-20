meta:
  id: t_orb
  endian: le
  encoding: UTF-8
  imports:
    - ../../../enums/common
    - ../../../enums/cs3
types:
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