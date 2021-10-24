meta:
  id: cs3
  endian: le
  encoding: UTF-8
  imports:
    - headers/header_base
    - headers/header_extend
    - cs3/tbl/entry
seq:
  - id: header
    type: header_base
  - id: header_extra
    type: header_extend
  - id: entries
    type: cs3_tbl_entry
    repeat: expr
    repeat-expr: header.num_entry
