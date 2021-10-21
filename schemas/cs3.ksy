meta:
  id: cs3_tbl
  endian: le
  encoding: UTF-8
  imports:
    - headers
    - tbl_cs3_mstqrt
    - tbl_cs3_orb
seq:
  - id: header
    type: headers::header
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
            # MSTQRT
            '"MasterQuartzStatus"': t_mstqrt::master_quartz_status
            '"MasterQuartzBase"': t_mstqrt::master_quartz_base
            '"MasterQuartzData"': t_mstqrt::master_quartz_data
            '"MasterQuartzMemo"': t_mstqrt::master_quartz_memo
            '"MasterQuartzDummy"': t_mstqrt::master_quartz_dummy
            # ORB
            '"BaseList"': t_orb::base_list
            '"OrbLineList"': t_orb::orb_line_list
        size: length
