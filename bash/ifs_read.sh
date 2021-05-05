#!/usr/bin/bash

{
      echo 'line \\ one \'
      echo 'continues'
      
} | while IFS='' read line;
do
      echo "=$line="
done
