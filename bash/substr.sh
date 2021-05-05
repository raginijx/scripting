#!/usr/bin/env bash

str='strikr free software project'

if [[ $str =~ "free" ]]; then
      echo "matched"
else
      echo "no match"
fi
