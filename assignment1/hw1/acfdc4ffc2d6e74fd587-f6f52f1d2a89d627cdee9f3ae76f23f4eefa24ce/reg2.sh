input=$1
[ -z "$input" ] && echo "Usage: regex-answers.sh filename" && exit
egrep -c ".*\d$" $input
egrep -c "^[^aeiou]" $input
egrep -c "^[a-Z]{12}$" $input
egrep -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" $input
egrep -c "^303-[0-9]{3}-[0-9]{4}$" $input
egrep -c "^[aeiou].*[0-9]$" $input
egrep -c "geocities\.com$" $input
egrep '@' regex_practice_data.txt | egrep -c -v "^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.(com|edu|gov|org|int)$"
