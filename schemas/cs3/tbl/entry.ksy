meta:
  id: cs3_tbl_entry
  endian: le
  encoding: UTF-8
  imports:
    - base_list
    - char_revise
    - game_difficulty
    - item
    - item_q
    - master_quartz_base
    - master_quartz_data
    - master_quartz_dummy
    - master_quartz_memo
    - master_quartz_status
    - orb_line_list
    - quartz_cost
    - qs_chapter
    - qs_mons
    - slot_cost
    - slot_ep
    - status
    - status_p
    - status_revise
seq:
  - id: header_name
    type: strz
  - id: entry_length
    type: u2
  - id: data
    type:
      switch-on: header_name
      cases:
        '"BaseList"': base_list
        '"char_revise"': char_revise
        '"game_difficulty"': game_difficulty
        '"item"': item
        '"item_q"': item_q
        '"MasterQuartzBase"': master_quartz_base
        '"MasterQuartzData"': master_quartz_data
        '"MasterQuartzDummy"': master_quartz_dummy
        '"MasterQuartzMemo"': master_quartz_memo
        '"MasterQuartzStatus"': master_quartz_status
        '"OrbLineList"': orb_line_list
        '"QuartzCost"': quartz_cost
        '"QSChapter"': qs_chapter
        '"QSMons"': qs_mons
        "'SlotCost'": slot_cost
        "'SlotEp'": slot_ep
        "'status'": status
        "'status_p'": status_p
        "'status_revise'": status_revise
        _: generic
types:
  generic:
    seq:
      - id: data
        size: _parent.entry_length
