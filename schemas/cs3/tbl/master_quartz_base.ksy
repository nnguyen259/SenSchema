meta:
  id: master_quartz_base
  endian: le
doc: |
  Master quartz stats.

  Stat patterns refer to values defined under the MasterQuartzStatus header.

  Present in t_mstqrt.tbl.
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
