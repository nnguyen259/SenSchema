import unittest
import cs3tbl


class TestCS3AtBonus(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/AtBonus.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "AtBonus")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.unknown_int, 42)
        self.assertEqual(entry.data.inverse_chance, 150)
        self.assertEqual(entry.data.hp_10_perc, 1)
        self.assertEqual(entry.data.hp_30_perc, 2)
        self.assertEqual(entry.data.hp_50_perc, 3)
        self.assertEqual(entry.data.ep_10_perc, 4)
        self.assertEqual(entry.data.ep_30_perc, 5)
        self.assertEqual(entry.data.ep_50_perc, 6)
        self.assertEqual(entry.data.cp_10, 7)
        self.assertEqual(entry.data.cp_30, 8)
        self.assertEqual(entry.data.cp_50, 9)
        self.assertEqual(entry.data.cp_100, 10)
        self.assertEqual(entry.data.bp_1, 11)
        self.assertEqual(entry.data.bp_3, 12)
        self.assertEqual(entry.data.bp_5, 13)
        self.assertEqual(entry.data.crit, 14)
        self.assertEqual(entry.data.sepith_up, 15)
        self.assertEqual(entry.data.zero_art, 16)
        self.assertEqual(entry.data.zero_order, 17)
        self.assertEqual(entry.data.guard_break, 18)
        self.assertEqual(entry.data.status_attack, 19)
        self.assertEqual(entry.data.deathblow, 20)
        self.assertEqual(entry.data.vanish, 21)
        self.assertEqual(entry.data.cp_200, 22)
        self.assertEqual(entry.data.cp_0, 23)
