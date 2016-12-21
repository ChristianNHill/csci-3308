#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Andy Sayler
# Summer 2014
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

import unittest
import textproc

class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_init(self):
        text = "tesing123"
        p = textproc.Processor(text)
        self.assertEqual(p.text, text, "'text' does not match input")

    def test_constructor(self):
        text = 3
        with self.assertRaises(textproc.TextProcError) as cm:
            textproc.Processor(text)
        self.assertTrue(cm.exception)


    # Add Your Test Cases Here...

    def test_count(self):
        word = "four"
        p = textproc.Processor(word)
        self.assertEqual(p.count(), len(p), "Word length doesn't equal length")

    def test_countalpha(self):
        word = "A four 12 5 A b"
        p = textproc.Processor(word)
        self.assertEqual(p.count_alpha(), 5, "Count_Alpha Error")

    def test_countalpha2(self):
        word = "A FOUR 12 5 A b"
        p = textproc.Processor(word)
        self.assertEqual(p.count_alpha(), 1, "Count_Alpha Error")

    def test_countnumeric(self):
        word = "555 hello 555 000 444"
        p = textproc.Processor(word)
        self.assertEqual(p.count_numeric(), 9, "Count_Numeric Error")

    def test_countnumeric2(self):
        word = "0000000000 1"
        p = textproc.Processor(word)
        self.assertEqual(p.count_numeric(), 1, "Count_Numeric Error")

    def test_countvowels(self):
        word = "aeiou"
        p = textproc.Processor(word)
        self.assertEqual(p.count_vowels(), 4, "Count_Vowels Error")

    def test_countvowels2(self):
        word = "aeiiiiou"
        p = textproc.Processor(word)
        self.assertEqual(p.count_vowels(), 4, "Count_Vowels Error")

    def test_isphonenumber(self):
        num = "717-537-555"
        p = textproc.Processor(num)
        self.assertEqual(p.is_phonenumber(), True, "IsPhoneNumber Error")

    def test_isphonenumber2(self):
        num = "717-537-5550"
        p = textproc.Processor(num)
        self.assertEqual(p.is_phonenumber(), False, "IsPhoneNumber Error")

# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()
