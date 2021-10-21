meta:
  id: t_mstqrt
  endian: le
  encoding: UTF-8
types:
  master_quartz_status:
    seq:
      - id: pattern_id
        type: u1
      - id: master_quartz_level
        type: u2
      - id: hp
        type: u2
      - id: ep
        type: u2
      - id: str
        type: u2
      - id: def
        type: u2
      - id: ats
        type: u2
      - id: adf
        type: u2
      - id: spd
        type: u2
      - id: sub_hp
        type: u2
      - id: sub_ep
        type: u2
      - id: sub_str
        type: u2
      - id: sub_def
        type: u2
      - id: sub_ats
        type: u2
      - id: sub_adf
        type: u2
      - id: sub_spd
        type: u2
  master_quartz_base:
    seq:
      - id: item_id
        type: u2
      - id: master_quartz_id
        type: u2
      - id: unknown
        type: u2
      - id: hp_pattern
        type: u2
      - id: ep_pattern
        type: u2
      - id: str_pattern
        type: u2
      - id: def_pattern
        type: u2
      - id: ats_pattern
        type: u2
      - id: adf_pattern
        type: u2
      - id: spd_pattern
        type: u2
  master_quartz_data:
    seq:
      - id: item_id
        type: u2
      - id: master_quartz_level
        type: u2
      - id: effect_1_value
        type: f4
      - id: effect_2_value
        type: f4
      - id: effect_3_value
        type: f4
      - id: effect_4_value
        type: f4
      - id: effect_5_value
        type: f4
      - id: effect_6_value
        type: f4
      - id: effect_7_value
        type: f4
      - id: effect_8_value
        type: f4
      - id: effect_9_value
        type: f4
      - id: art_1_id
        type: s2
      - id: art_2_id
        type: s2
      - id: memo_1_id
        type: s2
      - id: memo_2_id
        type: s2
      - id: memo_3_id
        type: s2
      - id: memo_4_id
        type: s2
      - id: memo_5_id
        type: s2
      - id: memo_6_id
        type: s2
      - id: memo_7_id
        type: s2
      - id: memo_8_id
        type: s2
      - id: memo_9_id
        type: s2
  master_quartz_memo:
    seq:
      - id: item_id
        type: u2
      - id: memo_id
        type: u2
      - id: memo_text
        type: strz
  master_quartz_dummy:
    seq:
      - id: dummy_id
        type: u2
      - id: original_id
        type: u2
