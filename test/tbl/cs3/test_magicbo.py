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
        self.assertEqual(entry.data.skill_id, 2030)
        self.assertEqual(entry.data.bo_effect_id_1, 20)
        self.assertEqual(entry.data.bo_effect_1_param_1, 0)
        self.assertEqual(entry.data.bo_effect_1_param_2, 0)
        self.assertEqual(entry.data.bo_effect_1_param_3, 0)
        self.assertEqual(entry.data.bo_effect_id_2, 35321)
        self.assertEqual(entry.data.bo_effect_2_param_1, 1397196183)
        self.assertEqual(entry.data.bo_effect_2_param_2, -1217694124)
        self.assertEqual(entry.data.bo_effect_2_param_3, 1833256677)
	self.assertEqual(entry.data.bo_effect_id_3, 31206)
        self.assertEqual(entry.data.bo_effect_3_param_1, 2042034952)
        self.assertEqual(entry.data.bo_effect_3_param_2, -2025363584)
        self.assertEqual(entry.data.bo_effect_3_param_3, 9009542)
        self.assertEqual(entry.data.bo_effect_id_4, 18279)
        self.assertEqual(entry.data.bo_effect_4_param_1, -402286754)
        self.assertEqual(entry.data.bo_effect_4_param_2, -35702971)
        self.assertEqual(entry.data.bo_effect_4_param_3, -311953171)
	self.assertEqual(entry.data.bo_effect_id_5, 12020)
        self.assertEqual(entry.data.bo_effect_5_param_1, 1301330143)
        self.assertEqual(entry.data.bo_effect_5_param_2, 891965182)
        self.assertEqual(entry.data.bo_effect_5_param_3, 2006350175)
        self.assertEqual(entry.data.count_amount, 37016)
