import unittest
import cs3tbl


class TestCS3MasterQuartzBase(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/MasterQuartzBase.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "MasterQuartzBase")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.item_id, 3345)
        self.assertEqual(entry.data.master_quartz_id, 22)
        self.assertEqual(entry.data.unknown, 0x1234)
        self.assertEqual(entry.data.hp_pattern, 3)
        self.assertEqual(entry.data.ep_pattern, 5)
        self.assertEqual(entry.data.str_pattern, 4)
        self.assertEqual(entry.data.def_pattern, 1)
        self.assertEqual(entry.data.ats_pattern, 0)
        self.assertEqual(entry.data.adf_pattern, 2)
        self.assertEqual(entry.data.spd_pattern, 6)
