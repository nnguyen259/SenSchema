import unittest
import cs3tbl


class TestCS3OrbLineList(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/OrbLineList.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "OrbLineList")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(
            entry.data.character_id.character_id, cs3tbl.Character.Characters.tita
        )
        self.assertEqual(entry.data.line_id, 0)
        self.assertEqual(entry.data.slot1_id, 8)
        self.assertEqual(entry.data.slot2_id, 7)
        self.assertEqual(entry.data.slot3_id, 6)
        self.assertEqual(entry.data.slot4_id, 5)
        self.assertEqual(entry.data.slot5_id, -1)
        self.assertEqual(entry.data.slot6_id, -1)
        self.assertEqual(entry.data.slot7_id, -1)
