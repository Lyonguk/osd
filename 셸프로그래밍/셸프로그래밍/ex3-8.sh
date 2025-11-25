#!/bin/bash

if [ ! -d "DB" ]; then
mkdir DB
echo "DB 폴더 생성"
fi

cd DB
for i in {1..5}; do
echo "임의 내용 $i" > "file${i}.txt"
done
tar czvf db_files.tar.gz file*.txt
cd ..

mkdir -p train
for i in {1..5}; do
ln -s "$(pwd)/DB/file${i}.txt" "train/file${i}.txt"
done

echo "작업 완료"
