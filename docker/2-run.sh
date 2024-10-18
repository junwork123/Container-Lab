docker run -d --rm -p 80:80 --name game-server game-server:1.0

docker run -d --rm -p 8080:80 --name game-server-slim game-server:1.0-slim

docker run -d --rm -p 8000:80 --name game-server-tiny game-server:1.0-tiny

docker run -d --rm -p 8001:80 --name game-server-tiny-special game-server:1.0-tiny-special