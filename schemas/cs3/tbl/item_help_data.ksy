meta:
  id: item_help_data
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/effect_type
doc: |
  Effect descriptions used for autogeneration of item/art/etc descriptions.

  Present in t_itemhelp.tbl.
seq:
  - id: effect_type
    type: effect_type
  - id: text
    type: strz
  - id: unknown_data
    type: u1
    repeat: expr
    repeat-expr: 9
