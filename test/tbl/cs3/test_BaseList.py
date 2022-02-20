import unittest
import cs3tbl


class TestCS3BaseList(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/BaseList.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "BaseList")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(
            entry.data.character_id.character_id, cs3tbl.Character.Characters.tita
        )
        self.assertEqual(entry.data.num_line, 4)
        self.assertEqual(
            entry.data.slot1_element.element_id, cs3tbl.Element.Elements.no_element
        )
        self.assertEqual(
            entry.data.slot2_element.element_id, cs3tbl.Element.Elements.water
        )
        self.assertEqual(
            entry.data.slot3_element.element_id, cs3tbl.Element.Elements.fire
        )
        self.assertEqual(
            entry.data.slot4_element.element_id, cs3tbl.Element.Elements.wind
        )
        self.assertEqual(
            entry.data.slot5_element.element_id, cs3tbl.Element.Elements.no_element
        )
        self.assertEqual(
            entry.data.slot6_element.element_id, cs3tbl.Element.Elements.space
        )
        self.assertEqual(
            entry.data.slot7_element.element_id, cs3tbl.Element.Elements.mirage
        )
