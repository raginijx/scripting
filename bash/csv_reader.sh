#!/usr/bin/bash


function usage () {
	echo "usage: ./csv_reader.sh file.txt"
}


CSV_INPUT=$1

if [ -z "${CSV_INPUT}" ]; then
	usage
	exit 1;
fi


while IFS=',' read -r first second third;
do
	echo $first

done < "${CSV_INPUT}"

exit 0;

# STRIKR Commentary
# reading a CSV file
# note: col variables must be separated by space and not comma.
