import unittest
import cs3tbl


class TestCS3MasterQuartzStatus(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/MasterQuartzStatus.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "MasterQuartzStatus")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.pattern_id, 4)
        self.assertEqual(entry.data.master_quartz_level, 2)
        self.assertEqual(entry.data.hp_increase, 500)
        self.assertEqual(entry.data.ep_increase, 490)
        self.assertEqual(entry.data.str_increase, 480)
        self.assertEqual(entry.data.def_increase, 470)
        self.assertEqual(entry.data.ats_increase, 460)
        self.assertEqual(entry.data.adf_increase, 450)
        self.assertEqual(entry.data.spd_increase, 440)
        self.assertEqual(entry.data.sub_hp_increase, 300)
        self.assertEqual(entry.data.sub_ep_increase, 290)
        self.assertEqual(entry.data.sub_str_increase, 280)
        self.assertEqual(entry.data.sub_def_increase, 270)
        self.assertEqual(entry.data.sub_ats_increase, 260)
        self.assertEqual(entry.data.sub_adf_increase, 250)
        self.assertEqual(entry.data.sub_spd_increase, 240)
