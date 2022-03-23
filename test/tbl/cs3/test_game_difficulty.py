import unittest
import cs3tbl


class TestCS3GameDifficulty(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/game_difficulty.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "game_difficulty")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(
            entry.data.difficulty.difficulty_id,
            cs3tbl.Difficulty.Difficulties.very_easy,
        )
        self.assertEqual(entry.data.multiplier, -35)
