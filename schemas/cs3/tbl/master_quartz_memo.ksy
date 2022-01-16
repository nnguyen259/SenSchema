meta:
  id: master_quartz_memo
  endian: le
  encoding: UTF-8
doc: |
  Master quartz effect descriptions.

  Present in t_mstqrt.tbl.
seq:
  - id: item_id
    type: u2
  - id: memo_id
    type: u2
  - id: memo_text
    type: strz
