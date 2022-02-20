import unittest
import cs3tbl


class TestCS3MasterQuartzMemo(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/MasterQuartzMemo.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "MasterQuartzMemo")
        self.assertEqual(header.num_entry, 2)

    def testEntries(self):
        (entry1, entry2) = self.tbl.entries
        self.assertEqual(entry1.data.item_id, 3345)
        self.assertEqual(entry1.data.memo_id, 0)
        self.assertEqual(entry1.data.memo_text, "★Neat effect.\n")
        self.assertEqual(entry2.data.item_id, 3345)
        self.assertEqual(entry2.data.memo_id, 21)
        self.assertEqual(entry2.data.memo_text, "Cost reduced by %g%%.")
