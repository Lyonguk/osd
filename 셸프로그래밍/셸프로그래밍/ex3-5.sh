#!/bin/bash

run_ls() {
eval ls "$1"
}

echo "리눅스 ls명령 옵션 입력"
read opts

run_ls "$opts"
