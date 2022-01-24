# This file has been automatically generated, do not edit.
# See gen_cs3_effects.py for details.
meta:
  id: effect_type
  endian: le
seq:
  - id: type_id
    type: u2
    enum: effect_types
enums:
  effect_types:
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
    4:
      id: flat_dmg
      doc: Flat damage (no scaling whatsoever).
    5:
      id: prop_dmg
      doc: Damage proportional to max HP (e.g. Wild Rage)
    6:
      id: reduce_hp
      doc: Reduce HP to target value (if above)
    9:
      id: prop_brk_dmg
      doc: Reduce break gauge proportional to max BRK
    10:
      id: inflict_psn
      doc: Inflict poison status
    11:
      id: inflict_seal
      doc: Inflict seal status
    12:
      id: inflict_mute
      doc: Inflict mute status
    13:
      id: inflict_blnd
      doc: Inflict blind status
    14:
      id: inflict_slp
      doc: Inflict sleep status
    15:
      id: inflict_burn
      doc: Inflict burn status
    16:
      id: inflict_frz
      doc: Inflict freeze status
    17:
      id: inflict_petr
      doc: Inflict petrify status
    18:
      id: inflict_fnt
      doc: Inflict faint status
    19:
      id: inflict_conf
      doc: Inflict confuse status
    20:
      id: inflict_dblw
      doc: Inflict deathblow
    21:
      id: inflict_nmr
      doc: Inflict nightmare status
    22:
      id: inflict_dly
      doc: Inflict delay
    23:
      id: inflict_vnsh
      doc: Inflict vanish status
    24:
      id: inflict_lbrk
      doc: Inflict link break status
    25:
      id: impede
      doc: Impede
    26:
      id: inflict_bdwn
      doc: Inflict balance down status
    28:
      id: inflict_weak
      doc: Inflict weak status. Never used in-game. Balance down and increase all elemental efficacies by 50%.
    29:
      id: inflict_random_abnormality
      doc: Inflict random abnormality.
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
    37:
      id: debuff_random
      doc: Random stat down
    40:
      id: inflict_mcburn
      doc: Inflict McBurn's special burn status
    41:
      id: debuff_all
      doc: All stats down
    50:
      id: cure_psn
      doc: Cure poison status
    51:
      id: cure_seal
      doc: Cure seal status
    52:
      id: cure_mute
      doc: Cure mute status
    53:
      id: cure_blnd
      doc: Cure blind status
    54:
      id: cure_slp
      doc: Cure sleep status
    55:
      id: cure_burn
      doc: Cure burn status
    56:
      id: cure_frz
      doc: Cure freeze status
    57:
      id: cure_petr
      doc: Cure petrify status
    58:
      id: cure_fnt
      doc: Cure faint status
    59:
      id: cure_conf
      doc: Cure confuse status
    60:
      id: cure_nmr
      doc: Cure nightmare status
    65:
      id: buff_str
      doc: STR up
    66:
      id: buff_def
      doc: DEF up
    67:
      id: buff_adf
      doc: ATS up
    68:
      id: buff_ats
      doc: ADF up
    69:
      id: buff_spd
      doc: SPD up
    70:
      id: buff_mov
      doc: MOV up
    71:
      id: insight_effect
      doc: Gain insight status
    73:
      id: accelerate_effect
      doc: Accelerate target(s), giving them the next turn(s)
    75:
      id: cure_ailments
      doc: Cure ailments
    76:
      id: cure_sdwn
      doc: Cure stat down
    77:
      id: cure_all
      doc: Cure ailments and stat down
    78:
      id: buff_all
      doc: All stats up
    85:
      id: brandish_1
      doc: Brandish (Laura/Aurelia), no downtime after it runs out
    86:
      id: brandish_2
      doc: Brandish (Kurt), one turn downtime after it runs out
    87:
      id: exchange_effect
      doc: Campanella's Exchange effect
    88:
      id: hide_effect
      doc: Hide effect. Cannot be targetted. Used by some monsters.
    90:
      id: inflict_charm
      doc: Inflict charm status
    93:
      id: enhanced_effect
      doc: Enhance
    100:
      id: hp_up
      doc: HP up by a flat amount
    101:
      id: ep_up
      doc: EP up by a flat amount
    102:
      id: cp_up
      doc: CP up by a flat amount
    103:
      id: prop_hp_up
      doc: HP up (relative to max)
    104:
      id: prop_ep_up
      doc: EP up (relative to max)
    105:
      id: prop_cp_up
      doc: CP up (relative to max)
    106:
      id: revive
      doc: revive with set HP
    107:
      id: revive_prop
      doc: revive with proportion of max HP
    108:
      id: hp_heal
      doc: HP up. Used by Tear etc.
    109:
      id: absorb_hp_phys
      doc: Deal physical damage and heal by a proportional amount.
    110:
      id: absorb_ep
      doc: Absorb EP
    111:
      id: absorb_cp
      doc: Absorb CP
    112:
      id: absorb_hp_mag
      doc: Deal magical damage and heal by a proportional amount
    113:
      id: regen_hp
      doc: Regenerate HP over time, in proportion to max HP.
    115:
      id: regen_cp
      doc: Regenerate CP over time
    116:
      id: revive_heal_1
      doc: Revive and heal
    117:
      id: revive_heal_2
      doc: Revive and heal (but stronger?)
    118:
      id: hp_ep_up
      doc: HP and EP up by a flat amount
    119:
      id: hp_cp_up
      doc: HP and CP up by a flat amount
    120:
      id: ep_cp_up
      doc: EP and CP up by a flat amount
    121:
      id: hp_ep_cp_up
      doc: HP/EP/CP up by a flat amount
    122:
      id: cp_or_near_death
      doc: CP or near death (always 50% chance?)
    123:
      id: hp_up_and_cure
      doc: HP up and cure ailments/stat down
    124:
      id: prop_hp_cp_up
      doc: HP and CP up
    125:
      id: bp_up
      doc: Gain BP
    152:
      id: ailment_immunity
      doc: Immunity to ailments
    153:
      id: stat_down_immunity
      doc: Immunity to stat down
    155:
      id: psn_immunity
      doc: Immunity to poison status
    156:
      id: seal_immunity
      doc: Immunity to seal status
    157:
      id: mute_immunity
      doc: Immunity to mute status
    158:
      id: blnd_immunity
      doc: Immunity to blind status
    159:
      id: slp_immunity
      doc: Immunity to sleep status
    160:
      id: burn_immunity
      doc: Immunity to burn status
    161:
      id: frz_immunity
      doc: Immunity to freeze status
    162:
      id: petr_immunity
      doc: Immunity to petrify status
    163:
      id: fnt_immunity
      doc: Immunity to faint status
    164:
      id: conf_immunity
      doc: Immunity to confuse status
    165:
      id: dblw_immunity
      doc: Immunity to deathblow status
    166:
      id: nmr_immunity
      doc: Immunity to nightmare status
    167:
      id: dly_immunity
      doc: Immunity to delay
    168:
      id: vnsh_immunity
      doc: Immunity to vanish status
    170:
      id: perfect_guard
      doc: Perfect guard
    171:
      id: craft_guard
      doc: Craft guard
    172:
      id: physical_reflect
      doc: Physical reflect
    173:
      id: arts_reflect
      doc: Arts reflect
    174:
      id: perfect_reflect
      doc: Perfect reflect
    190:
      id: unknown_defend_effect
      doc: Defend (in mech battles)
    191:
      id: unknown_morning_moon_effect
      doc: Used by Morning Moon
    192:
      id: unknown_unblockable_effect
      doc: Used by unblockable mech crafts
    201:
      id: unknown_reflect
      doc: Used by Reflect
    202:
      id: stealth_effect
      doc: Stealth
    203:
      id: analyze_effect
      doc: Analyze
    205:
      id: emergency_puppet_effect
      doc: On KO revive with full CP, item breaks
    206:
      id: crit_chance
      doc: Crit chance up
    207:
      id: increase_drop_chance
      doc: Increased drop chance for KO'd monsters
    208:
      id: cp_gain_up
      doc: CP gain up (gladiator headband)
    209:
      id: cp_up_every_turn
      doc: CP up every turn (gladiator belt)
    210:
      id: proxy_puppet_effect
      doc: On KO revive, item breaks
    213:
      id: cast_time_modifier
      doc: Cast time modifier
    214:
      id: ep_cost_modifier
      doc: EP cost modifier
    215:
      id: unknown_summon
      doc: Monster summon effect?
    219:
      id: remedy_fantasia_effect
      doc: HP up over time? Used by Remedy Fantasia.
    222:
      id: spell_card_effect
      doc: Spell Card effect (but only absolute deathblow when used in other places?)
    223:
      id: chrono_burst_effect
      doc: User gets double turn
    224:
      id: smoke_grenade_effect
      doc: Escape battle
    226:
      id: spirit_unification_effect
      doc: Spirit unification
    231:
      id: devil_doll_effect
      doc: Revive on KO once per battle
    235:
      id: unknown_eat
      doc: Eat?
    236:
      id: unknown_spit_out
      doc: Spit out?
    243:
      id: revolution_effect
      doc: if monster level ≥ attacker level, randomly increase damage
    244:
      id: waterfall_effect
      doc: if monster level ≤ attacker level, randomly increase damage
    330:
      id: domination_effect
      doc: First attack/craft deals more damage
    331:
      id: hades_effect
      doc: First magic attack deals more damage
    332:
      id: magic_evasion
      doc: Magic Evasion
    334:
      id: bell_effect
      doc: Reduce recovery delay for arts with the same element as the quartz
    335:
      id: sr_bell_effect
      doc: Reduce recovery delay for all arts and increase damage for arts with the same element as the quartz
    336:
      id: sepith_drop_up
      doc: Enemies drop more sepith
    338:
      id: wrath_effect
      doc: Guaranteed crit on counter
    339:
      id: dragon_vision_effect
      doc: Automatically analyse monster on KO
    340:
      id: moon_lens_effect_1
      doc: Can see enemy stats in battle
    341:
      id: aeolus_effect
      doc: Inflicted status effects last longer
    342:
      id: increase_break_damage
      doc: Increased break damage
    350:
      id: moon_lens_effect_2
      doc: Can see chests on the minimap
    351:
      id: hp_recovery_on_field
      doc: HP recovers on the field
    352:
      id: ep_recovery_on_field
      doc: EP recovers on the field
    353:
      id: assault_point_recovery_on_field
      doc: Assault points recover on the field
    354:
      id: restore_cp_with_field_attacks
      doc: Restore CP with field attacks
    355:
      id: scent_effect
      doc: Enemies more likely to notice
    356:
      id: intimidation_effect
      doc: Enemies more likely to run away
    360:
      id: effort_effect
      doc: Increased chance to make a superb dish
    361:
      id: prankster_effect
      doc: Increased chance to make a peculiar dish
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
