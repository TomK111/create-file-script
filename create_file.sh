#!/bin/bash

echo "Enter file name to create"
read file_name

if [[ -f "$file_name" ]]
then
  echo "$file_name already exists"
  exit 0
elif [[ "$file_name" == *.sh ]]
then
  touch $file_name
  chmod +x $file_name
  echo "$file_name created successfully with executable permissions."
else
  touch $file_name
  echo "$file_name was successfully created."
fi
