# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 실행할때 ./myscript.sh
# 실행을 위해서는 실행권한(x) 필요

touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
./myscript.sh

# myscript2 생성
# 터미널창에 script start 라는 문구 출력
echo "script start"
# mydir로 이동해서 file1.txt, file.txt 파일생성
cd
touch file1.txt file.txt
# file1.txt 에서는 hello from file1 문구 입력
echo "hello from file1" > file1.txt
# file2.txt 에서는 hello from file2 문구 입력
echo "hello from file2" > file2.txt
# 터미널창에 script end 문구 출력
echo "script end"

# 실습2
# myscript2 생성
# script start 터미널창에 출력
echo "script3 start"
# 홈디렉토리에 mydir로 이동(절대경로이동)
cd /home/cho/mydir
# file1.txt파일의 백업본 생성. 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt파일의 이름을 file_rename.txt로 변경
mv file2.txt file2_rename.txt
# script2 end 터미널창에 출력
echo "script3 end"

# if문
if [ 1 -gt 2 ]; then
echo "hello world1"
else
echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
echo "$file_name file exists"
else
echo "$file_name file does not exists"

# for문과 파일/디렉토리 목록조회
for a in {1..100}
do
echo "hello world $a"
done

for a in *
do
echo "$a"
done

# for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
let count=count+1
done
echo "count value is $count"