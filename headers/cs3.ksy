meta:
  id: cs3
  endian: le
seq:
  - id: info
    type: info
  - id: headers
    type: header
    repeat: expr
    repeat-expr: info.num_header
types:
  info:
    seq:
      - id: num_entry
        type: u2
      - id: num_header
        type: u4
  header:
    seq:
      - id: header_name
        type: strz
        encoding: UTF-8
      - id: num_entry
        type: u4