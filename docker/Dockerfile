FROM ubuntu:22.04

# 패키지 설치
RUN apt-get update && apt-get install -y nginx git

# Nginx 기본 설정 파일 제거
RUN rm -rf /var/www/html/*

# 2048 게임 소스코드 다운로드
RUN git clone https://github.com/gabrielecirulli/2048.git /var/www/html/

# 외부에 노출할 포트 설정
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]