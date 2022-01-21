from future import standard_library
standard_library.install_aliases()
import unittest  # noqa
import sys  # noqa
import os  # noqa



class Test(unittest.TestCase):

    def setUp(self):
		pass

    def tearDown(self):
        pass

    @contextmanager
    def captured_output(self):
		pass



if __name__ == '__main__':
    unittest.main()
