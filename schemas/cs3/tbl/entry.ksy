meta:
  id: cs3_tbl_entry
  endian: le
  encoding: UTF-8
  imports:
    # MSTQRT
    - t_mstqrt/master_quartz_base
    - t_mstqrt/master_quartz_data
    - t_mstqrt/master_quartz_dummy
    - t_mstqrt/master_quartz_memo
    - t_mstqrt/master_quartz_status
    # ORB
    - t_orb/base_list
    - t_orb/orb_line_list
    # QU_COST
    - t_qu_cost/quartz_cost
    # SLOT
    - t_slot/slot_ep
    - t_slot/slot_cost
seq:
  - id: header_name
    type: strz
  - id: entry_length
    type: u2
  - id: data
    type:
      switch-on: header_name
      cases:
        # MSTQRT
        '"MasterQuartzStatus"': master_quartz_status
        '"MasterQuartzBase"': master_quartz_base
        '"MasterQuartzData"': master_quartz_data
        '"MasterQuartzMemo"': master_quartz_memo
        '"MasterQuartzDummy"': master_quartz_dummy
        # ORB
        '"BaseList"': base_list
        '"OrbLineList"': orb_line_list
        # QU_COST
        '"QuartzCost"': quartz_cost
        # SLOT
        "'SlotEp'": slot_ep
        "'SlotCost'": slot_cost
        # Other
        _: generic
types:
  generic:
    seq:
      - id: data
        size: _parent.entry_length
