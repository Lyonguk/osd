#!/bin/bash

while true; do
echo "======================="
echo "1)사용자 정보"
echo "2)GPU 또는 CPU 사용률"
echo "3)메모리 사용량"
echo "4)디스크 사용량"
echo "5)종료"
echo "======================="
read -p "번호 입력: " choice

case "$choice" in
1)
echo "[사용자 정보]"
who
;;
2)
echo "[CPU 사용률]"
top -b -n 1|head -15
;;
3)
echo "[메모리 사용량]"
free -h
;;
4)
echo "[디스크 사용량]"
df -h
;;
5)
echo "확인 종료"
break
;;
*)
echo "잘못된 입력"
;;
esac
done
