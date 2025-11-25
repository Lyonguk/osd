#L/bin/bash

scores=()

while true; do
echo "================================"
echo "1) 과목 성적 추가"
echo "2) 입력된 모든 점수 보기"
echo "3) 평균 점수 확인"
echo "4) 평균 등급(GPA) 변환"
echo "5) 종료"
echo "================================"
read -p "번호를 입력하세요: " choice

case "$choice" in
1)
read -p "점수를 입력하세요 (0~100): " sc
if [[ "$sc" =~ ^[0-9]+$ ]] && [ "$sc" -ge 0 ] && [ "$sc" -le 100 ]; then
scores+=("$sc")
echo "추가 완료"
else
echo "유효하지 않은 점수"
fi
;;
2)
echo "입력된 점수: "
for score in "${scores[@]}"; do
echo "$score"
done
;;
3)
if [ "${#scores[@]}" -eq 0 ]; then
echo "점수가 없습니다"
else
sum=0
for score in "${scores[@]}"; do
sum=$((sum+score))
done
avg=$(echo "scale=2; $sum/${#scores[@]}"|bc)
echo "평균 점수: $avg"
fi
;;
4)
if [ "${#scores[@]}" -eq 0 ]; then
echo "점수가 없습니다"
else
sum=0
for score in "${scores[@]}"; do
sum=$((sum+score))
done
cnt=${#scores[@]}
avg=$(echo "scale=2; $sum/$cnt"|bc)
if (( $(echo "$avg >= 90"|bc -l) )); then
gpa="4.5"
elif (( $(echo "$avg >= 80"|bc -l) )); then
gpa="4.0"
elif (( $(echo "$avg >= 70"|bc -l) )); then
gpa="3.0"
else
gpa="2.0"
fi
echo "평균 GPA: $gpa"
fi
;;
5)
echo "종료합니다."
break
;;
*)
echo "잘못된 입력"
;;
esac
done
