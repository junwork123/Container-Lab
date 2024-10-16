# 빌드 단계
FROM alpine:latest AS build

# 필요한 패키지 설치
RUN apk add --no-cache git

# 2048 게임 소스코드 다운로드
RUN git clone https://github.com/gabrielecirulli/2048.git /src/2048

# Nginx 실행 단계
FROM alpine:latest

# Nginx 설치
RUN apk add --no-cache nginx

# Nginx 기본 설정 파일 제거 및 새 설정 파일 작성
RUN rm -f /etc/nginx/http.d/default.conf && \
    echo "server { listen 80; root /var/lib/nginx/html; index index.html; }" > /etc/nginx/http.d/default.conf

# 빌드 단계에서 가져온 소스코드 복사
COPY --from=build /src/2048 /var/lib/nginx/html

# 구분을 위해 HTML 코드 수정
RUN sed -i 's|<title>2048</title>|<title>Tiny 2048</title>|g' /var/lib/nginx/html/index.html && \
    sed -i 's|<h1 class="title">2048</h1>|<h1 class="title">Tiny 2048</h1>|g' /var/lib/nginx/html/index.html


# 외부에 노출할 포트 설정
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]