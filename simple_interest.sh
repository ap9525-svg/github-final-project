#!/bin/bash
# This script calculates simple interest.

echo "Enter the principal amount:"
read p

echo "Enter the rate of interest per year (in %):"
read r

echo "Enter the time period in years:"
read t

# Formula: SI = (P * R * T) / 100
# Using 'bc' for handling potential decimal values in rate or interest
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

echo "The calculated Simple Interest is: $interest"
