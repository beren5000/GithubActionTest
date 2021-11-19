from django.test import TestCase


class TestsTest(TestCase):
    def test_simple_assertion(self):
        self.assertEqual("1", str(1))


class TestsBadTest(TestCase):
    def test_simple_bad_assertion(self):
        self.assertEqual("1", 1)
