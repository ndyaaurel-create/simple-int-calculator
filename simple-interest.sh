#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "   Simple Interest Calculator   "
echo "================================"

# Get input from the user

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (years): " time

# Calculate simple interest

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount

total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display the results

echo ""
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
echo "================================"
