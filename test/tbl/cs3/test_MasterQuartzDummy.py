import unittest
import cs3tbl


class TestCS3MasterQuartzDummy(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/MasterQuartzDummy.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "MasterQuartzDummy")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.dummy_id, 3354)
        self.assertEqual(entry.data.original_id, 3345)
