#!/bin/bash

CURRENT_YEAR=$(date +%Y)

echo "Enter your birth year (between 1900 - $CURRENT_YEAR):"
read BIRTH_YEAR

# Ensure input is exactly 4 digits
if [[ ! $BIRTH_YEAR =~ ^[0-9]{4}$ ]]; then
    echo "Error: Please enter a valid 4-digit year."
    exit 1
fi

# Ensure year is between 1900 and current year
if (( BIRTH_YEAR >= 1900 && BIRTH_YEAR <= CURRENT_YEAR )); then
    AGE=$((CURRENT_YEAR - BIRTH_YEAR))
    echo "You are $AGE years old."
else
    echo "Error: Year must be between 1900 and $CURRENT_YEAR."
    exit 1
fi