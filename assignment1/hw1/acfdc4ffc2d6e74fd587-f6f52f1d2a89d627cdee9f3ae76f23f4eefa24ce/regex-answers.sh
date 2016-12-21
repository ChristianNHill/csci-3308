#!/bin/bash
#Andrew Rutherford

#How many lines end with a number
grep "[0-9]$" $1 | wc -l

#How many lines do not start with a vowel
grep "^[^aeiou]" $1 | wc -l

#How many 12 letter alphabet only lines
grep "^[A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z]$" $1 | wc -l

#How many phone numbers of form ___-___-____
grep "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" $1 | wc -l

#How many boulder phone numbers
grep "[3][0][3]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" $1 | wc -l

#How many lines begin with a vowel and end with a number
grep "^[aeiou].*[0-9]$" $1 | wc -l

#How many email addresses from geocities
grep -E -o "\b[A-Za-z0-9._%+-]+@(geocities.com)\b" $1 | wc -l

#Valid email addresses
egrep '@' $1 | egrep -c -v "^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.(com|edu|gov|org|int)$"
