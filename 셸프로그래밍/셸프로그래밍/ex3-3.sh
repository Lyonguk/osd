#!/bin/bash

read -a scores

sum=0

for score in "${scores[@]}"
do
if [ "$score" -ge 90 ]; then
echo "$score : A"
else
echo "$score : B"
fi
sum=$((sum+score))
done

avg=$(echo "scale=2; $sum/${#scores[@]}"|bc)
if(($(echo "$avg >= 90"|bc -l) )); then
avg_grade="A"
else
avg_grade="B"
fi
echo "평균 점수: $avg"
echo "평균 등급: $avg_grade"
