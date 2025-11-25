#!/bin/bash

DB="DB.txt"

while true; do
echo "====================="
echo "1) 팀원 정보 추가"
echo "2) 팀원과 한 일 기록"
echo "3) 팀원 검색"
echo "4) 수행 내용 검색"
echo "5) 종료"
echo "====================="
read -p "번호 선택: " sel

case "$sel" in
1)
read -p "이름 입력: " name
read -p "생일/전화번호 입력: " info
echo "$name, $info" >> $DB
echo "팀원 정보 추가"
;;
2)
read -p "팀원이름: " name
read -p "일자(YYYY-MM-DD): " date
read -p "수행 내용: " work
echo "$date, $name, $work" >> $DB
echo "수행 내용 기록"
;;
3)
read -p "검색할 팀원 이름: " name
grep "$name" $DB
;;
4)
read -p "검색할 날짜(YYYY-MM-DD): " date
grep "$date" $DB
;;
5)
echo "종료"
break
;;
*)
echo "잘못된 입력"
;;
esac
done
