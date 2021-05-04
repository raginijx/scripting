#!/usr/bin/bash

cat /proc/partitions |awk '{print $NF}' |grep -E ^sd[a-z]$ |wc -l
