import unittest
import cs3tbl


class TestCS3CharRevise(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/char_revise.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "char_revise")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.script, "mon000")
        self.assertEqual(entry.data.hp, 50)
        self.assertEqual(entry.data.strength, 100)
        self.assertEqual(entry.data.defence, 90)
        self.assertEqual(entry.data.ats, 80)
        self.assertEqual(entry.data.adf, 70)
        self.assertEqual(entry.data.speed, 50)
        self.assertEqual(entry.data.break_multiplier, 50)
