import unittest
import cs3tbl


class TestCS3MasterQuartzData(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/MasterQuartzData.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "MasterQuartzData")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.item_id, 3345)
        self.assertEqual(entry.data.master_quartz_level, 3)
        self.assertEqual(entry.data.effect_1_value, 55)
        self.assertEqual(entry.data.effect_2_value, -3)
        self.assertEqual(entry.data.effect_3_value, 5)
        self.assertEqual(entry.data.effect_4_value, 20)
        self.assertEqual(entry.data.effect_5_value, 24)
        self.assertEqual(entry.data.effect_6_value, 28)
        self.assertEqual(entry.data.effect_7_value, 10)
        self.assertEqual(entry.data.effect_8_value, -100)
        self.assertEqual(entry.data.effect_9_value, 250)
        self.assertEqual(entry.data.art_1_id, 21)
        self.assertEqual(entry.data.art_2_id, -1)
        self.assertEqual(entry.data.memo_1_id, 0)
        self.assertEqual(entry.data.memo_2_id, 1)
        self.assertEqual(entry.data.memo_3_id, 2)
        self.assertEqual(entry.data.memo_4_id, 10)
        self.assertEqual(entry.data.memo_5_id, 11)
        self.assertEqual(entry.data.memo_6_id, 12)
        self.assertEqual(entry.data.memo_7_id, 20)
        self.assertEqual(entry.data.memo_8_id, 21)
        self.assertEqual(entry.data.memo_9_id, -1)
