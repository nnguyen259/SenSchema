meta:
  id: magic_bo
  endian: le
doc: |
  Effects and parameter of Brave Order count effects.

  Present in t_magic.tbl.
seq:
  - id: skill_id
    type: u2
  - id: bo_effect_id_1
    type: u2
  - id: bo_effect_1_param_1
    type: s4
  - id: bo_effect_1_param_2
    type: s4
  - id: bo_effect_1_param_3
    type: s4
  - id: bo_effect_id_2
    type: u2
  - id: bo_effect_2_param_1
    type: s4
  - id: bo_effect_2_param_2
    type: s4
  - id: bo_effect_2_param_3
    type: s4
  - id: bo_effect_id_3
    type: u2
  - id: bo_effect_3_param_1
    type: s4
  - id: bo_effect_3_param_2
    type: s4
  - id: bo_effect_3_param_3
    type: s4
  - id: bo_effect_id_4
    type: u2
  - id: bo_effect_4_param_1
    type: s4
  - id: bo_effect_4_param_2
    type: s4
  - id: bo_effect_4_param_3
    type: s4
  - id: bo_effect_id_5
    type: u2
  - id: bo_effect_5_param_1
    type: s4
  - id: bo_effect_5_param_2
    type: s4
  - id: bo_effect_5_param_3
    type: s4
  - id: count_amount
    type: u2
    doc: could be an s2 value
