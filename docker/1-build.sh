docker build -t game-server:1.0 .

docker build -t game-server:1.0-slim -f slim.Dockerfile .

docker build -t game-server:1.0-tiny -f tiny.Dockerfile .

docker build -t game-server:1.0-tiny-special --build-arg KEYWORD=special -f tiny.Dockerfile .