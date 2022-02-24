import unittest
import cs3tbl


class TestCS3StatusRevise(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/status_revise.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "status_revise")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(
            entry.data.difficulty.difficulty_id, cs3tbl.Difficulty.Difficulties.hard
        )
        self.assertEqual(entry.data.hp, 110)
        self.assertEqual(entry.data.strength, 80)
        self.assertEqual(entry.data.defence, 90)
        self.assertEqual(entry.data.ats, 75)
        self.assertEqual(entry.data.adf, 95)
        self.assertEqual(entry.data.speed, 110)
        self.assertEqual(entry.data.break_multiplier, 120)
