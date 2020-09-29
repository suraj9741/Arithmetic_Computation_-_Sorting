##!/bin/bash -x
echo "Arithmetic Computation & Sorting"
echo "Enter three value for input : "
read a
read b
read c
compute=$(awk 'BEGIN{print '$a' + '$b' * '$c'}')
compute1=$(awk 'BEGIN{print '$a' * '$b' + '$c'}')
compute2=$(awk 'BEGIN{print '$c' + '$a' / '$b'}')
echo "a + b * c = $compute"
echo "a * b + c = $compute1"
echo "c + a / b = $compute2"
