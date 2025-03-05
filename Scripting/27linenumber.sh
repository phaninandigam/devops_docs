#!/bin/bash

echo "Please enter the filename:"
read filename

echo "$(cat -n $filename)"
