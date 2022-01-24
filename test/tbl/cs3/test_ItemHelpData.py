import unittest
import cs3tbl


class TestCS3ItemHelpData(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/ItemHelpData.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "ItemHelpData")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.effect_type.type_id, cs3tbl.EffectType.EffectTypes.inflict_nmr)
        self.assertEqual(entry.data.text, "Nightmare (%d%%)")
        self.assertEqual(entry.data.unknown_data, [1, 2, 3, 4, 5, 6, 7, 8, 9])
