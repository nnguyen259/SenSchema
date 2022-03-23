meta:
  id: item_type
  endian: le
seq:
  - id: type_id
    type: u2
    enum: item_types
enums:
  item_types:
    128: sepith
    130: quest_item
    132: book
    133: manly_munchies_potato_salad
    134: vantage_masters_card_pa_rancell
    140: weapon
    190: armor
    191: shoes
    192: accessory
    193: costume # Only clothes (not glasses, ears, and so on).
    194: attachment # Glasses, ears, ...
    195: hair_dye
    197: ex_orb
    198: arcus_cover
    199: car_color
    200: quartz
    201: master_quartz
    210: food_ingredient
    220: fish
    221: fishing_gear
    222: bait
    223: summary # There are a few items that match this, they are all named "Summary" and their description is "Doesn't appear on list"
    389: manly_munchies_onions
    390: vantage_masters_card_d_arma
    471: attack_dish
    645: manly_munchies_cake_1 # duplicate (?) to 4741
    646: vantage_masters_card_ae_ferrion
    897: consumable
    898: rare_items # U-materials, Black Zemurian Ore (+ Shards), Shining Pom Bait
    901: manly_munchies_juice
    902: vantage_masters_card_gia_bro
    979: superb_dish
    980: regular_dish
    981: peculiar_dish
    982: unique_dish
    1153: smoke_grenade_or_battle_scope
    1157: manly_munchies_stew
    1158: vantage_masters_card_da_colm
    1254: shining_pom_droplet
    1413: manly_munchies_sandwiches
    1665: stat_boosters
    1669: manly_munchies_noodles
    1670: vantage_masters_card_requ
    1925: manly_munchies_coffee
    1926: vantage_masters_card_marme
    2181: manly_munchies_bagel
    2182: vantage_masters_card_zamilpen
    2437: manly_munchies_fried_rice
    2438: vantage_masters_card_tarbyss
    2693: manly_munchies_steak
    2694: vantage_masters_card_neptjuno
    2949: manly_munchies_ice_cream
    3205: manly_munchies_bouillabaisse
    3206: vantage_masters_card_hepetus
    3461: manly_munchies_paella
    3462: manly_munchies_dulmdalla
    3717: manly_munchies_cocktails
    3718: vantage_masters_card_blyx
    3973: manly_munchies_pie
    3974: vantage_masters_card_oonvievle
    4229: manly_munchies_pasta
    4230: vantage_masters_card_greon
    4485: manly_munchies_curry
    4741: manly_munchies_cake_2 # duplicate (?) to 645
    4742: vantage_masters_pelitt
    4997: manly_munchies_burger
    4998: vantage_masters_card_guene_foss
    5253: manly_munchies_tea
    5254: vantage_masters_card_kyria_bell
    5509: manly_munchies_skewer
    5510: vantage_masters_card_fifenall
    5766: vantage_masters_card_amoltamis
    6022: vantage_masters_card_regna_croxe
    6278: vantage_masters_card_magic_crystal
    6790: vantage_masters_card_medic
    7046: vantage_masters_card_transmute
    7302: vantage_masters_card_vanish
    7558: vantage_masters_card_uptide
    8070: vantage_masters_card_blaze
    8326: vantage_masters_card_wall
    8838: vantage_masters_card_fighter
    9094: vantage_masters_card_ranger
    9350: vantage_masters_card_sister
    9606: vantage_masters_card_knight
    9862: vantage_masters_card_thief
    10118: vantage_masters_card_witch
    10374: vantage_masters_card_paladin
    10630: vantage_masters_card_beast
    10886: vantage_masters_card_swordsman
    11142: vantage_masters_card_sorcerer
