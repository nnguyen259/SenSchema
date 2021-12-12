meta:
  id: qsmons # QSMons
  endian: le
  encoding: UTF-8
seq:
  - id: enemy_script
    type: strz
  - id: unknown_string
    type: strz
  - id: section_id
    type: s2
  - id: unknown_short
    type: u2
    doc: |
      In the original files, this takes values from 0 to 299 (inclusive) and is unique for every monster, suggesting it may be used as an ID or sort order.
      However, swapping or duplicating values doesn't have any known effect.
  - id: is_extra
    type: u1
    doc: |
      1 for every monster in the "EXTRA" section, 0 for all others.
  - id: unknown_byte
    type: u1
    doc: |
      In the original files, this byte is always 0.
