#!/bin/bash

USER=$(whoami)

# +%D -> MM/DD/YY format
DATE=$(date +%D)

# +%T -> HH:MM:SS format
TIME=$(date +%T)

echo "hello world! I am $USER. Today is $DATE and time is $TIME."