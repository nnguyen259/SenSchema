meta:
  id: headers
  endian: le
types:
  info:
    seq:
      - id: num_entry
        type: u2
      - id: num_header
        type: u4
  info_basic:
    seq:
      - id: num_entry
        type: u2
  header_info:
    seq:
      - id: header_name
        type: strz
        encoding: UTF-8
      - id: num_entry
        type: u4
  header:
    seq:
      - id: info
        type: info
      - id: headers
        type: header_info
        repeat: expr
        repeat-expr: info.num_header
  header_basic:
    seq:
      - id: info
        type: info_basic
