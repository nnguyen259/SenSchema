import unittest
import cs3tbl


class TestCS3ItemQ(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/item_q.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "item_q")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.item_id, 3607)
        self.assertEqual(entry.data.unknown_short_1, 65535)
        self.assertEqual(entry.data.flags, "SL")
        self.assertEqual(entry.data.item_type.type_id, cs3tbl.ItemType.ItemTypes.quartz)
        self.assertEqual(
            entry.data.item_subtype.type_id,
            cs3tbl.ItemSubtype.ItemSubtypes.generic_subtype,
        )
        self.assertEqual(entry.data.element, 4)
        self.assertEqual(entry.data.quartz_type, cs3tbl.ItemQ.QuartzType.status_quartz)
        self.assertEqual(entry.data.rating, 2.0)
        self.assertEqual(entry.data.unknown_byte_1, 1)
        self.assertEqual(
            entry.data.effects[0].effect_id, cs3tbl.Effect.EffectType.debuff_mov
        )
        self.assertEqual(entry.data.effects[0].data, [999992, 0, 40])
        self.assertEqual(
            entry.data.effects[1].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entry.data.effects[1].data, [0, 0, 0])
        self.assertEqual(
            entry.data.effects[2].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entry.data.effects[2].data, [0, 0, 0])
        self.assertEqual(
            entry.data.effects[3].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entry.data.effects[3].data, [0, 0, 0])
        self.assertEqual(
            entry.data.effects[4].effect_id, cs3tbl.Effect.EffectType.no_effect
        )
        self.assertEqual(entry.data.effects[4].data, [0, 0, 0])
        self.assertEqual(entry.data.strength, 20)
        self.assertEqual(entry.data.defence, 5)
        self.assertEqual(entry.data.ats, 1)
        self.assertEqual(entry.data.adf, 2)
        self.assertEqual(entry.data.accuracy, 50)
        self.assertEqual(entry.data.evasion, 5)
        self.assertEqual(entry.data.speed, 10)
        self.assertEqual(entry.data.mov, 1)
        self.assertEqual(entry.data.hp, 500)
        self.assertEqual(entry.data.ep, 20)
        self.assertEqual(entry.data.price, 3200)
        self.assertEqual(entry.data.carry_limit, 99)
        self.assertEqual(entry.data.sort_id, 1350)
        self.assertEqual(entry.data.unknown_short_2, 65535)
        self.assertEqual(entry.data.name, "Morgause")
        self.assertEqual(
            entry.data.description,
            "[ #32ISpecial ]\nSTR+20/Attacks/crafts cause MOV↓(M) (40% chance).",
        )
        self.assertEqual(entry.data.prio_balanced, 451)
        self.assertEqual(entry.data.prio_physical, 899)
        self.assertEqual(entry.data.prio_magical, 5)
        self.assertEqual(entry.data.prio_speed, 306)
        self.assertEqual(entry.data.arts, [72, 65535, 65535, 65535, 65535, 65535])
