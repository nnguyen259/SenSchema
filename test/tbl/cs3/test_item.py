import unittest
import cs3tbl


class TestCS3Item(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/item.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "item")
        self.assertEqual(header.num_entry, 3)

    def testEntries(self):
        entries = self.tbl.entries
        self.assertEqual(len(entries), 3)

        self.assertEqual(entries[0].data.item_id, 123)
        self.assertEqual(
            entries[0].data.character_restriction.character_id,
            cs3tbl.Character.Characters.no_restriction,
        )
        self.assertEqual(entries[0].data.flags, "SLCBPM")
        self.assertEqual(
            entries[0].data.item_type.type_id, cs3tbl.ItemType.ItemTypes.consumable
        )
        self.assertEqual(
            entries[0].data.item_subtype.type_id,
            cs3tbl.ItemSubtype.ItemSubtypes.generic_subtype,
        )
        self.assertEqual(entries[0].data.element, 0)
        self.assertEqual(entries[0].data.slash, 1)
        self.assertEqual(entries[0].data.thrust, 1)
        self.assertEqual(entries[0].data.pierce, 1)
        self.assertEqual(entries[0].data.strike, 1)
        self.assertEqual(entries[0].data.unknown_byte, 0)
        self.assertEqual(
            entries[0].data.target_type,
            cs3tbl.TargetType.TargetTypes.target_single_no_movement.value,
        )
        self.assertEqual(entries[0].data.range, 1.0)
        self.assertEqual(entries[0].data.area, 1)
        self.assertEqual(entries[0].data.unknown_float_1, 0.0)
        self.assertEqual(entries[0].data.unknown_float_2, 100.0)
        self.assertEqual(entries[0].data.unknown_float_3, -100.0)
        self.assertEqual(
            entries[0].data.effects[0].effect_id, cs3tbl.Effect.EffectType.prop_hp_up
        )
        self.assertEqual(entries[0].data.effects[0].data, [50, 0, 0])
        self.assertEqual(
            entries[0].data.effects[1].effect_id, cs3tbl.Effect.EffectType.cure_ailments
        )
        self.assertEqual(entries[0].data.effects[1].data, [75, 0, 0])
        self.assertEqual(
            entries[0].data.effects[2].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[0].data.effects[2].data, [0, 0, 0])
        self.assertEqual(
            entries[0].data.effects[3].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[0].data.effects[3].data, [0, 0, 0])
        self.assertEqual(
            entries[0].data.effects[4].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[0].data.effects[4].data, [0, 0, 0])
        self.assertEqual(entries[0].data.strength, 0)
        self.assertEqual(entries[0].data.defence, 0)
        self.assertEqual(entries[0].data.ats, 0)
        self.assertEqual(entries[0].data.adf, 0)
        self.assertEqual(entries[0].data.accuracy, 0)
        self.assertEqual(entries[0].data.evasion, 0)
        self.assertEqual(entries[0].data.speed, 0)
        self.assertEqual(entries[0].data.mov, 0)
        self.assertEqual(entries[0].data.hp, 0)
        self.assertEqual(entries[0].data.ep, 0)
        self.assertEqual(entries[0].data.price, 10_000)
        self.assertEqual(entries[0].data.carry_limit, 99)
        self.assertEqual(entries[0].data.sort_id, 58)
        self.assertEqual(entries[0].data.unknown_short, 65535)
        self.assertEqual(entries[0].data.name, "Pancake")
        self.assertEqual(
            entries[0].data.description, "A flat cake cooked on a hot surface."
        )

        self.assertEqual(entries[1].data.item_id, 1365)
        self.assertEqual(
            entries[1].data.character_restriction.character_id,
            cs3tbl.Character.Characters.gaius,
        )
        self.assertEqual(entries[1].data.flags, "L")
        self.assertEqual(
            entries[1].data.item_type.type_id, cs3tbl.ItemType.ItemTypes.weapon
        )
        self.assertEqual(
            entries[1].data.item_subtype.type_id,
            cs3tbl.ItemSubtype.ItemSubtypes.gaius_weapon_type,
        )
        self.assertEqual(entries[1].data.element, 0)
        self.assertEqual(entries[1].data.slash, 1)
        self.assertEqual(entries[1].data.thrust, 4)
        self.assertEqual(entries[1].data.pierce, 5)
        self.assertEqual(entries[1].data.strike, 2)
        self.assertEqual(entries[1].data.unknown_byte, 123)
        self.assertEqual(
            entries[1].data.target_type,
            cs3tbl.TargetType.TargetTypes.target_single_no_movement.value,
        )
        self.assertEqual(entries[1].data.range, 3.0)
        self.assertEqual(entries[1].data.area, 1)
        self.assertEqual(entries[1].data.unknown_float_1, 0.0)
        self.assertEqual(entries[1].data.unknown_float_2, 100.0)
        self.assertEqual(entries[1].data.unknown_float_3, -100.0)
        self.assertEqual(
            entries[1].data.effects[0].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[1].data.effects[0].data, [0, 0, 0])
        self.assertEqual(
            entries[1].data.effects[1].effect_id, cs3tbl.Effect.EffectType.crit_chance
        )
        self.assertEqual(entries[1].data.effects[1].data, [60, 0, 0])
        self.assertEqual(
            entries[1].data.effects[2].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[1].data.effects[2].data, [0, 0, 0])
        self.assertEqual(
            entries[1].data.effects[3].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[1].data.effects[3].data, [0, 0, 0])
        self.assertEqual(
            entries[1].data.effects[4].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entries[1].data.effects[4].data, [0, 0, 0])
        self.assertEqual(entries[1].data.strength, 600)
        self.assertEqual(entries[1].data.defence, 100)
        self.assertEqual(entries[1].data.ats, 10)
        self.assertEqual(entries[1].data.adf, 20)
        self.assertEqual(entries[1].data.accuracy, 50)
        self.assertEqual(entries[1].data.evasion, 15)
        self.assertEqual(entries[1].data.speed, 8)
        self.assertEqual(entries[1].data.mov, 3)
        self.assertEqual(entries[1].data.hp, 1000)
        self.assertEqual(entries[1].data.ep, 125)
        self.assertEqual(entries[1].data.price, 0)
        self.assertEqual(entries[1].data.carry_limit, 99)
        self.assertEqual(entries[1].data.sort_id, 173)
        self.assertEqual(entries[1].data.unknown_short, 65535)
        self.assertEqual(entries[1].data.name, "Rhongomyniad")
        self.assertEqual(
            entries[1].data.description, "Spear of Arthur, king of legends."
        )

        self.assertEqual(entries[2].data.item_id, 3345)
        self.assertEqual(
            entries[2].data.character_restriction.character_id,
            cs3tbl.Character.Characters.no_restriction,
        )
        self.assertEqual(entries[2].data.flags, "0")
        self.assertEqual(
            entries[2].data.item_type.type_id, cs3tbl.ItemType.ItemTypes.master_quartz
        )
        self.assertEqual(
            entries[2].data.item_subtype.type_id,
            cs3tbl.ItemSubtype.ItemSubtypes.generic_subtype,
        )
        self.assertEqual(entries[2].data.element, 6)
        self.assertEqual(entries[2].data.slash, 0)
        self.assertEqual(entries[2].data.thrust, 0)
        self.assertEqual(entries[2].data.pierce, 0)
        self.assertEqual(entries[2].data.strike, 0)
        self.assertEqual(entries[2].data.unknown_byte, 0)
        self.assertEqual(entries[2].data.target_type, 0)
        self.assertEqual(entries[2].data.range, 0.0)
        self.assertEqual(entries[2].data.area, 0)
        self.assertEqual(entries[2].data.unknown_float_1, 0.0)
        self.assertEqual(entries[2].data.unknown_float_2, 0.0)
        self.assertEqual(entries[2].data.unknown_float_3, 0.0)
        for i in range(5):
            self.assertEqual(
                entries[2].data.effects[i].effect_id, cs3tbl.Effect.EffectType.no_effect
            )
            self.assertEqual(entries[2].data.effects[i].data, [0, 0, 0])
        self.assertEqual(entries[2].data.strength, 0)
        self.assertEqual(entries[2].data.defence, 0)
        self.assertEqual(entries[2].data.ats, 0)
        self.assertEqual(entries[2].data.adf, 0)
        self.assertEqual(entries[2].data.accuracy, 0)
        self.assertEqual(entries[2].data.evasion, 0)
        self.assertEqual(entries[2].data.speed, 0)
        self.assertEqual(entries[2].data.mov, 0)
        self.assertEqual(entries[2].data.hp, 0)
        self.assertEqual(entries[2].data.ep, 0)
        self.assertEqual(entries[2].data.price, 0)
        self.assertEqual(entries[2].data.carry_limit, 1)
        self.assertEqual(entries[2].data.sort_id, 22)
        self.assertEqual(entries[2].data.unknown_short, 65535)
        self.assertEqual(entries[2].data.name, "Gudrun")
        self.assertEqual(entries[2].data.description, "Space elemental master quartz.")
