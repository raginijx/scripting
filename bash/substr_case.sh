#!/usr/bin/env bash

function die () {
	printf "die: script failed at line: %s\n" ${BASH_LINENO[0]}
}

str='strikr dree software project'

case "$str" in
	*free*)
		echo "matched"
		;;
	*)
		echo "no match"
		die "$@"
		;;
esac

exit 0;
