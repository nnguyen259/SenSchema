meta:
  id: item
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/character
    - /components/cs3/effects
    - /components/cs3/item_type
    - /components/cs3/item_subtype
    - /components/cs3/target_type
    - /components/common/element
doc: |
  This schema is very similar to the item_q schema, but some fields have a different interpretation, and item_q is longer by eight bytes. 
seq:
  - id: item_id
    type: u2
  - id: character_restriction
    type: character
  - id: flags
    type: strz
  - id: item_type
    type: item_type
  - id: item_subtype
    type: item_subtype

  - id: element
    type: element

  - id: slash
    type: u1
    doc: |
      Unbalance rating, 0 (none) to 5 (SS rank)
  - id: thrust
    type: u1
    doc: |
      Unbalance rating, 0 (none) to 5 (SS rank)
  - id: pierce
    type: u1
    doc: |
      Unbalance rating, 0 (none) to 5 (SS rank)
  - id: strike
    type: u1
    doc: |
      Unbalance rating, 0 (none) to 5 (SS rank)

  - id: target_type
    type: u1
#      switch-on: 'item_type'
#      cases:
#        'item_type::item_types::weapon': target_type
#        'item_type::item_types::attack_dish': target_type
#        'item_type::item_types::consumable': target_type
#        'item_type::item_types::superb_dish': target_type
#        'item_type::item_types::regular_dish': target_type
#        'item_type::item_types::peculiar_dish': target_type
#        'item_type::item_types::unique_dish': target_type
#        'item_type::item_types::smoke_grenade_or_battle_scope': target_type
#        'item_type::item_types::stat_booster': target_type
#        _: u1
    doc: |
      For weapons and consumables, this is the target type.
      However, this field is also nonzero for a few other items (such as Eternal Kandelaar and costumes)
  - id: range
    type: f4
  - id: area
    type: u1

  - id: unknown_float_1
    type: f4
  - id: unknown_float_2
    type: f4
  - id: unknown_float_3
    type: f4

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
  - id: carry_limit
    type: u1
    doc: |
      Setting this to values greater than 99 leads to overlapping text.
  - id: sort_id
    type: u2

  - id: unknown_short
    type: u2

  - id: name
    type: strz
  - id: description
    type: strz

  - id: zeros
    contents: [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]
