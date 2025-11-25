import sys
print("실행파일 시작")
for i, arg in enumerate(sys.argv[1:], 1):
	print(f"입력 인자 {i}: {arg}")
print("실행파일 끝")
