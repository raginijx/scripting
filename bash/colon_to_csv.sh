#!/usr/bin/bash


function usage () {
	echo "usage: ./csv_reader.sh file.txt"
}


CSV_INPUT=$1

if [ -z "${CSV_INPUT}" ]; then
	usage
	exit 1;
fi


IFS='.'
read -r -a arr <<< "${CSV_INPUT}"
CSV_OUTPUT="${arr[0]}.csv"
IFS=''


sed -e 's/:/,/g' -e 's/,,/,-,/g' -e 's/,$/,-/g' ${CSV_INPUT} > ${CSV_OUTPUT}


exit 0;

# STRIKR commentary
# password.txt
# password.csv
# split the filename

# FIXME
# d.fix check for input
# d.fix filename split
# d.Fix Jagged
# ,, -> ,-,
# ,$ -> ,-
