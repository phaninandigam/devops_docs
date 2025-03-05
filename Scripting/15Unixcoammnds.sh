#!/bin/bash

echo "$(cat studentsdata)"

val=$(awk -F " " '{print $0}' studentsdata)
echo "Aek command"

echo "$val"
