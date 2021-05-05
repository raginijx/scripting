#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"

if [[ ! -d "${DIR}" ]]; then

      DIR="${PWD}"
fi


source "${DIR}/util.inc"


function test_die () {

      die "$@"      
}




# __main__

test_die


exit 0;
