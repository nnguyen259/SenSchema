meta:
  id: status
  endian: le
  encoding: UTF-8
doc: |
  Monster status.
  Includes stat bases and growths; elemental, status, and unbalance
  efficacies; sepith and item drops; and more.

  Extremely similar to the player character status table (status_p).

  Present in t_mons.tbl
seq:
  - id: script
    type: strz
  - id: texture
    type: strz
  - id: model
    type: strz

  - id: model_scale
    type: f4
  - id: camera_pivot_height
    type: f4
    doc: |
      Height of the camera pivot above ground when it's centered on the character.
      Player characters only.
  - id: hitbox_size
    type: f4
  - id: unknown_float_1
    type: f4
  - id: unknown_float_2
    type: f4
  - id: unknown_float_3
    type: f4
  - id: unknown_float_4
    type: f4
  - id: unknown_short_1
    type: u2
  - id: unknown_short_2
    type: u2

  - id: is_female
    type: u1
    doc: |
      Determines availability of gender-restricted items for player characters.
  - id: level
    type: u1

  - id: hp_base
    type: u4
  - id: hp_growth
    type: f4
  - id: max_ep
    type: u2
  - id: start_ep
    type: u2
  - id: max_cp
    type: u2
  - id: start_cp
    type: u2

  - id: str_base
    type: u2
  - id: str_growth
    type: f4
  - id: def_base
    type: u2
  - id: def_growth
    type: f4
  - id: ats_base
    type: u2
  - id: ats_growth
    type: f4
  - id: adf_base
    type: u2
  - id: adf_growth
    type: f4
  - id: dex_base
    type: u2
  - id: dex_growth
    type: f4
  - id: agl_base
    type: u2
  - id: agl_growth
    type: f4

  - id: eva
    type: u2

  - id: spd_base
    type: u2
  - id: spd_growth
    type: f4
  - id: mov_base
    type: u2
  - id: mov_growth
    type: f4
  - id: exp_base
    type: u2
  - id: exp_growth
    type: f4
  - id: break_multiplier_base
    type: u2
  - id: break_multiplier_growth
    type: f4

  - id: earth_efficacy
    type: u1
  - id: water_efficacy
    type: u1
  - id: fire_efficacy
    type: u1
  - id: wind_efficacy
    type: u1
  - id: time_efficacy
    type: u1
  - id: space_efficacy
    type: u1
  - id: mirage_efficacy
    type: u1

  - id: psn_efficacy
    type: u1
  - id: seal_efficacy
    type: u1
  - id: mute_efficacy
    type: u1
  - id: blnd_efficacy
    type: u1
  - id: slp_efficacy
    type: u1
  - id: burn_efficacy
    type: u1
  - id: frz_efficacy
    type: u1
  - id: petr_efficacy
    type: u1
  - id: fnt_efficacy
    type: u1
  - id: conf_efficacy
    type: u1
  - id: chrm_efficacy
    type: u1
  - id: dblw_efficacy
    type: u1
  - id: nmr_efficacy
    type: u1
  - id: dlay_efficacy
    type: u1
  - id: vnsh_efficacy
    type: u1
  - id: s_dwn_efficacy
    type: u1

  - id: slash_efficacy
    type: u2
  - id: thrust_efficacy
    type: u2
  - id: pierce_efficacy
    type: u2
  - id: strike_efficacy
    type: u2

  - id: earth_sepith_base
    type: u1
  - id: water_sepith_base
    type: u1
  - id: fire_sepith_base
    type: u1
  - id: wind_sepith_base
    type: u1
  - id: time_sepith_base
    type: u1
  - id: space_sepith_base
    type: u1
  - id: mirage_sepith_base
    type: u1
  - id: sepith_mass_base
    type: u1

  - id: earth_sepith_growth
    type: f4
  - id: water_sepith_growth
    type: f4
  - id: fire_sepith_growth
    type: f4
  - id: wind_sepith_growth
    type: f4
  - id: time_sepith_growth
    type: f4
  - id: space_sepith_growth
    type: f4
  - id: mirage_sepith_growth
    type: f4
  - id: sepith_mass_growth
    type: f4

  - id: drop_id_1
    type: u2
  - id: drop_chance_1
    type: u1
  - id: drop_id_2
    type: u2
  - id: drop_chance_2
    type: u1

  - id: monster_variation_min
    type: f4
    doc: |
      Lower bound of the random monster stat and model size factor.

      The random factor takes values of 1+0.1*n where n is an integer.
      It persists across save/load but is reshuffled on leaving and reentering the area.
      The following stats are known to be affected: HP, DEF, ADF.
      Other stats have not been tested.

      If this value is set to a value greater than 1 or to zero, the models can become invisible and no fight can be initiated on the field.
  - id: monster_variation_max
    type: f4
    doc: |
      Upper bound of the random monster stat and model size factor.
      For details, see the documentation for random_monster_variation_min.

      If set to a value smaller than 1, the models become invisible and no fight can be initiated on the field (though they can push you around).
  - id: flags
    type: strz
  - id: name
    type: strz
  - id: description
    type: strz
