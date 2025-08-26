#!/bin/bash
# calculator.sh - Simple CLI Calculator

echo "==== Calculator ===="
read -p "Enter first number: " a
read -p "Enter operator (+ - * /): " op
read -p "Enter second number: " b

case $op in
    +) result=$(echo "$a + $b" | bc) ;;
    -) result=$(echo "$a - $b" | bc) ;;
    \*) result=$(echo "$a * $b" | bc) ;;
    /) result=$(echo "scale=2; $a / $b" | bc) ;;
    *) echo "Invalid operator"; exit 1 ;;
esac

echo "Result: $result"
read -p "Press enter to return to main menu"
