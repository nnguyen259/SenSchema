meta:
  id: header_extend
  endian: le
seq:
  - id: num_header
    type: u4
  - id: headers
    type: header_info
    repeat: expr
    repeat-expr: num_header
types:
  header_info:
    seq:
      - id: header_name
        type: strz
        encoding: UTF-8
      - id: num_entry
        type: u4
