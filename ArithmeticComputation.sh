##!/bin/bash -x
echo "Arithmetic Computation & Sorting"
echo "Enter three value for input : "
read a
read b
read c
declare -A compute
compute[0]=$(awk 'BEGIN{print '$a' + '$b' * '$c'}')
compute[1]=$(awk 'BEGIN{print '$a' * '$b' + '$c'}')
compute[2]=$(awk 'BEGIN{print '$c' + '$a' / '$b'}')
compute[3]=$(awk 'BEGIN{print '$a' % '$b' / '$c'}')
for ((i=0;i<${#compute[@]};i++))
do
	d[$i]=$compute[$i]
done
echo "a + b * c = ${compute[0]}"
echo "a * b + c = ${compute[1]}"
echo "c + a / b = ${compute[2]}"
echo "a % b / c = ${compute[3]}"
echo "${compute[@]}"
