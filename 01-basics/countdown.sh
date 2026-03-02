#!/bin/bash

COUNT=$1

# Check if user provided an argument
if [ -z "$COUNT" ]; then
    echo "Usage: ./countdown.sh <seconds>"
    exit 1
fi

echo -n "Countdown: "
for (( i=$COUNT; i>0; i-- )); do
    # \r: carriage return (go to beginning of the line)
    echo -ne "\rCountdown: $i seconds left "
    sleep 1
done
# -e: enable backslash escapes
echo -e "\nBOOM!"