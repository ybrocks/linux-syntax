# 홈경로(/home/본인계정폴더)로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

# 파일 내용을 터미널 창에 출력하기
cat first_file.txt

# 파일 내용 편집기로 열기 : nano, vi
nano first_file.txt

# 파일내용 상위 10줄 출력
head 파일명

# 파일내용 하위 10줄 출력
tail 파일명

# 파일내용 하위 n개
tail -n 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 도스키(화살표키) 위/아래 통해 이전명령어 조회
# history를 통해 이전에 실행했던 모든 명령어 조회
# clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
# ctrl+C 를 통해 입력중인 명령어 취소

# 파일삭제 명령어
rm 파일명
# 폴더삭제 명령어
rm -r 폴더명

# 터미널창에 입력한 문자열을 출력
echo "hello world"
# echo를 통해 파일을 열지 않고 내용 입력 가능
# > : 덮어쓰기 / >> : 추가모드
echo "hello world" > second_file.txt

# 복사명령어(폴더 복사시에는 cp -r 폴더명)
# cp + 복사대상 + 복사될파일명
cp first_file.txt first_file_copy.txt

# 파일 이동 명령어
mv 이동대상파일 경로/이동될파일명
# 현재 폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
# 상위폴더로 파일이동
mv second_file.txt ../

# grep : 파일 내에서 문자열 찾기
# r:디렉토리 내 / n:라인수출력 / i:대소문자구분없이
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt" txt로 끝나는 / find . -name "asd.*" asd로 시작하는
find . -type f

# find와 grep의 혼용
# | xargs를 통해 왼쪽 실행문의 결과값을 오른쪽 실행문의 인풋값으로 전달
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아,
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장을 찾아라
find . -type f -name "first*" | xargs grep -rni "hello"