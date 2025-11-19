# 프로세스 목록조회
ps -ef
ps -ef | grep "nginx"

#패키지 관련
# yum-레드햇계열 패키지 관리도구 / apt-데비안계열 패키지 관리도구
# 패키지 목록 최신화
sudo apt update
# nginx 등 프로그램 설치
sudo apt install nginx
# 프로세스 실행관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제종료
sudo kill -9 PID(프로세스ID)

# 특정 도메인의 ip주소 정보 조회 : DNS서버에 문의
nslookup google.com

# 로컬 ip정보 조회
ifconfig

# 네트워크 연결상태조회
# 일반적으로 ping은 보안상 막아두고있음
ping IP주소
ping 8.8.8.8

# IP와 포트를 이용해 특정 서버의 특정프로그램의 통신상태까지 확인가능
# 일반적으로 talnet은 막혀있고, 사용하기를 권장하지않음
talnet IP주소 포트번호
nc -zc IP주소(또는도메인) 포트번호

#원격접속 : 22 port open
ssh 계정명@도메인주소(또는IP주소)

#원격파일전송 : 22 port open
scp 전송하고자하는파일 원격지주소
