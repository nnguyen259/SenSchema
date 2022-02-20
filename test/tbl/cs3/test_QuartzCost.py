import unittest
import cs3tbl


class TestCS3QuartzCost(unittest.TestCase):
    def setUp(self):
        self.tbl = cs3tbl.Cs3.from_file("data/cs3/QuartzCost.tbl")

    def testHeader(self):
        (header,) = self.tbl.header_extra.headers
        self.assertEqual(header.header_name, "QuartzCost")
        self.assertEqual(header.num_entry, 1)

    def testEntries(self):
        (entry,) = self.tbl.entries
        self.assertEqual(entry.data.quartz_id, 59)
        self.assertEqual(entry.data.earth_sepith_cost, 123)
        self.assertEqual(entry.data.water_sepith_cost, 246)
        self.assertEqual(entry.data.fire_sepith_cost, 369)
        self.assertEqual(entry.data.wind_sepith_cost, 492)
        self.assertEqual(entry.data.time_sepith_cost, 615)
        self.assertEqual(entry.data.space_sepith_cost, 738)
        self.assertEqual(entry.data.mirage_sepith_cost, 861)
