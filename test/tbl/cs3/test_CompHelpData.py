import unittest
import cs3tbl


class TestCS3CompHelpData(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/CompHelpData.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "CompHelpData")
        self.assertEqual(header.num_entry, 2)

    def testEntries(self):
        (entry1,entry2) = self.tbl.entries
        self.assertEqual(entry1.data.type.value, 1)
        self.assertEqual(entry1.data.text, "L")
        self.assertEqual(entry1.data.value, 7)
        self.assertEqual(entry2.data.type.value, 6)
        self.assertEqual(entry2.data.text, "5S")
        self.assertEqual(entry2.data.value, 350)
