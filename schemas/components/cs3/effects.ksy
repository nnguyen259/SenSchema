# This file has been automatically generated, do not edit.
# See gen_cs3_effects.py for details.
meta:
  id: effect
  endian: le
seq:
  - id: effect_id
    type: u2
    enum: effect_type
    doc: |
      Effects are applied to items (weapons, armor, shoes, accessories, consumables, quartzes) or magic (art, crafts, brave orders).
      
      Most effect types are ignored in some circumstances, for example:
      - Effect 1 (Strength-based physical damage) works on consumable items used in battle, but not from the out-of-battle menu.
      - Effect 206 (Crit chance) works for accessories, but not for crafts (despite their descriptions).
      - Effect 223 (Chrono Burst) only works when applied to magic, but not when applied to an item.
      - Effect 330 (Domination) only works when applied to a quartz, but not when applied to an accessory.
      
      For most effect types, one or more data values are used to determine the exact effect.
      
      For effects that inflict status ailments:
      - The first data value is the activation chance in percent (before target resistance).
        If the value is 1000, target resistance is ignored and the effect is guaranteed to take effect.
      - The second data value is the number of turns.
        If the value is zero, a fallback value will be used (depends on ailment).
      Status ailment effect generally work when applied to magic or consumables (only in battle).
      When applied to accessories, affects the target of attacks.
      
      For effects that inflict stat buffs and debuffs:
      - The first data value is the added/subtracted amount in percent.
        The value 999991 describes an (S) buff/debuff (±15%).
        The value 999992 describes an (M) buff/debuff (±30%).
        The value 999993 describes an (L) buff/debuff (±45%).
      - The second value is the number of turns.
      - The third value is the chance in percent (before target resistance, only for debuffs).
      Buffs and debuffs generally work when applied to magic or consumables (only in battle).
      When applied to accessories, affects the target of attacks.
      
      Effects that cure a status ailment or debuff generally don't use any data value.
      They work when applied to magic or consumables (in battle).
      When applied to accessories, they affect the target of attacks.
  - id: data
    type: u4
    repeat: expr
    repeat-expr: 3
enums:
  effect_type:
    0:
      id: no_effect
      doc: No effect. Used as filler/placeholder.
    1:
      id: str_phys_dmg
      doc: Strength-based physical damage
    2:
      id: ats_mag_dmg
      doc: ATS-based magical damage
    3:
      id: str_mag_dmg
      doc: Strength-based magical damage.
    30:
      id: debuff_str
      doc: STR down
    31:
      id: debuff_def
      doc: DEF down
    32:
      id: debuff_ats
      doc: ATS down
    33:
      id: debuff_adf
      doc: ADF down
    34:
      id: debuff_spd
      doc: SPD down
    35:
      id: debuff_mov
      doc: MOV down
    40:
      id: inflict_mcburn
      doc: Inflict McBurn's special burn status
    73:
      id: accelerate_effect
      doc: Accelerate target(s), giving them the next turn(s)
    85:
      id: brandish_1
      doc: Brandish (Laura/Aurelia), no downtime after it runs out
    86:
      id: brandish_2
      doc: Brandish (Kurt), one turn downtime after it runs out
    125:
      id: bp_up
      doc: Gain BP
    170:
      id: perfect_guard
      doc: Perfect guard
    174:
      id: perfect_reflect
      doc: Perfect reflect
    206:
      id: crit_chance
      doc: Crit chance up
    330:
      id: domination_effect
      doc: First attack/craft deals more damage
    331:
      id: hades_effect
      doc: First magic attack deals more damage
    332:
      id: magic_evasion
      doc: Magic Evasion
    400:
      id: max_hp_up
      doc: Permanent max HP bonus
    401:
      id: max_str_up
      doc: Permanent STR bonus
    402:
      id: max_def_up
      doc: Permanent DEF bonus
    403:
      id: max_ats_up
      doc: Permanent ATS bonus
    404:
      id: max_adf_up
      doc: Permanent ADF bonus
