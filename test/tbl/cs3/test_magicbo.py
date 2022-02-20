import unittest
import cs3tbl


class TestCS3MasterQuartzBase(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/testbo.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "magicbo")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.skill_id, 3345)
        self.assertEqual(entry.data.bo_effect_id_1, 22)
        self.assertEqual(entry.data.bo_effect_1_param_1, 0x1234)
        self.assertEqual(entry.data.bo_effect_1_param_2, 3)
        self.assertEqual(entry.data.bo_effect_1_param_3, 5)
        self.assertEqual(entry.data.bo_effect_id_2, 4)
        self.assertEqual(entry.data.bo_effect_2_param_1, 1)
        self.assertEqual(entry.data.bo_effect_2_param_1, 0)
        self.assertEqual(entry.data.bo_effect_2_param_2, 2)
        self.assertEqual(entry.data.bo_effect_2_param_3, 6)
	self.assertEqual(entry.data.bo_effect_id_3, 0x1234)
        self.assertEqual(entry.data.bo_effect_3_param_1, 3)
        self.assertEqual(entry.data.bo_effect_3_param_2, 5)
        self.assertEqual(entry.data.bo_effect_3_param_3, 4)
        self.assertEqual(entry.data.bo_effect_id_4, 1)
        self.assertEqual(entry.data.bo_effect_4_param_1, 0)
        self.assertEqual(entry.data.bo_effect_4_param_2, 2)
        self.assertEqual(entry.data.bo_effect_4_param_3, 6)
	self.assertEqual(entry.data.bo_effect_id_5, 0x1234)
        self.assertEqual(entry.data.bo_effect_5_param_1, 3)
        self.assertEqual(entry.data.bo_effect_5_param_2, 5)
        self.assertEqual(entry.data.bo_effect_5_param_3, 4)
        self.assertEqual(entry.data.count_amount, 1)
