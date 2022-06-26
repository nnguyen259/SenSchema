meta:
  id: item_q
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/effects
    - /components/cs3/item_subtype
    - /components/cs3/item_type
    - /components/common/element
doc: |
  This schema is very similar to the item schema, but some fields have a different interpretation, and item_q is longer by eight bytes.
seq:
  - id: item_id
    type: u2
  - id: unknown_short_1
    type: u2
    doc: |
      In the item schema this is character restriction, but changing this value doesn't have any known effect.
      Probably unused.
  - id: flags
    type: strz
  - id: item_type
    type: item_type
    doc: Always 200, always quartzes.
  - id: item_subtype
    type: item_subtype
    doc: Always 0.

  - id: element
    type: element

  - id: zeros_1
    contents: [0x00, 0x00, 0x00, 0x00]
    doc: |
      Zero bytes.
      In the item schema these are unbalance ratings.
      May be unused.

  - id: quartz_type
    type: u1
    enum: quartz_type

  - id: rating
    type: f4
    doc: |
      0 = regular, 1 = R, 2 = SR

  - id: unknown_byte_1
    type: u1

  - id: zeros_2
    contents: [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]

  - id: effects
    type: effect
    repeat: expr
    repeat-expr: 5

  - id: strength
    type: s2
  - id: defence
    type: s2
  - id: ats
    type: s2
  - id: adf
    type: s2
  - id: accuracy
    type: s2
  - id: evasion
    type: s2
  - id: speed
    type: s2
  - id: mov
    type: s2
  - id: hp
    type: s2
  - id: ep
    type: s2

  - id: price
    type: u4
    doc: |
      Mira obtained from selling times 4.
      For synthesis cost see qu_cost.
  - id: carry_limit
    type: u1
    doc: |
      Setting this to values greater than 99 leads to overlapping text.
  - id: sort_id
    type: u2

  - id: unknown_short_2
    type: u2

  - id: name
    type: strz
  - id: description
    type: strz

  - id: prio_balanced
    type: u2
    doc: |
      Priority when auto-setting "balanced" quartz.
  - id: prio_physical
    type: u2
    doc: |
      Priority when auto-setting "physical damage" quartz.
  - id: prio_magical
    type: u2
    doc: |
      Priority when auto-setting "magical damage" quartz.
  - id: prio_speed
    type: u2
    doc: |
      Priority when auto-setting "speed" quartz.

  - id: arts
    type: u2
    repeat: expr
    repeat-expr: 6
    doc: |
      IDs of arts granted when equipping the quartz.
      65535 is used as a placeholder.
enums:
  quartz_type:
    0: normal_quartz
    1: status_quartz
    2: breaker_quartz
