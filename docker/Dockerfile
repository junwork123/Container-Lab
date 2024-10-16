FROM alpine:latest

# 패키지 설치
RUN apk add --no-cache nginx git

# Nginx 기본 설정 파일 제거
RUN rm -f /etc/nginx/http.d/default.conf && \
    rm -rf /var/lib/nginx/html

# Nginx 설정 파일 작성
RUN echo "server { listen 80; root /var/lib/nginx/html; index index.html; }" > /etc/nginx/http.d/default.conf

# 2048 게임 소스코드 다운로드
RUN git clone https://github.com/gabrielecirulli/2048.git /var/lib/nginx/html

# 외부에 노출할 포트 설정
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]