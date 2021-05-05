#!/usr/bin/env bash

read -s -p "enter password: " var_passwd

if [ -z "$var_passwd" ]; then
	printf "\nempty password\n"
fi

exit 0;
