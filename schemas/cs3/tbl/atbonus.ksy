meta:
  id: atbonus
  endian: le
doc: |
  Determines turn bonuses.

  We don't entirely understands how the data here works, but the inverse chance determines how likely any bonus is to turn up.
  Lower values make everything more likely, a value of 0 or 1 means almost every turn will have some bonus.

  The other values determine the chances for any individual bonus.
  Higher values make the bonus more likely, 0 means it won't show up at all.
seq:
  - id: unknown_int
    doc: |
      Probably some sort of id identifying the sets of turn bonuses.
    type: u4
  - id: inverse_chance
    type: u1
  - id: hp_10_perc
    type: u1
  - id: hp_30_perc
    type: u1
  - id: hp_50_perc
    type: u1
  - id: ep_10_perc
    type: u1
  - id: ep_30_perc
    type: u1
  - id: ep_50_perc
    type: u1
  - id: cp_10
    type: u1
  - id: cp_30
    type: u1
  - id: cp_50
    type: u1
  - id: cp_100
    type: u1
  - id: bp_1
    type: u1
  - id: bp_3
    type: u1
  - id: bp_5
    type: u1
  - id: crit
    type: u1
  - id: sepith_up
    type: u1
  - id: zero_art
    type: u1
  - id: zero_order
    type: u1
  - id: guard_break
    type: u1
  - id: status_attack
    type: u1
  - id: deathblow
    type: u1
  - id: vanish
    type: u1
  - id: cp_200
    type: u1
  - id: cp_0
    type: u1
