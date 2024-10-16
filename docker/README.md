## Requirements

### Docker

- Mac
    - [Docker Desktop](https://docs.docker.com/desktop/install/mac-install/)

- Windows
    - [Docker Desktop](https://docs.docker.com/desktop/install/windows-install/)

- Ubuntu
    ```bash
    # 필수 프로그램 설치
    sudo apt-get install -y git curl
    
    # Docker 설치
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    
    # 일반 사용자에게 Docker 실행 권한 부여
    sudo usermod -aG docker $USER # 호스트 머신의 사용자 그룹에 Docker 추가
    sudo chown -R $USER:$USER /var/run/docker.sock # Docker 소유자 변경
    
    # Docker Compose 설치
    sudo apt-get install -y docker-compose docker-compose-plugin
    ```

## Getting Started

### Build Docker Image
```bash
docker build -t game-server:1.0 .

docker build -t game-server:1.0-slim -f slim.Dockerfile .

docker build -t game-server:1.0-tiny -f tiny.Dockerfile .
```

### Run Docker Image
```bash
docker run game-server:1.0

docker run -p 80:80 game-server:1.0

docker run -p 80:80 -d game-server:1.0
```

### Stop Docker Container
```bash
docker rm $(docker ps -a -q)
```

### Push Docker Image
```bash
docker tag game-server:1.0 <username>/game-server:1.0
```


## Clean Up
### Stop all containers
```bash
docker stop $(docker ps -a -q)
```

### Remove all containers
```bash
docker rm $(docker ps -a -q)
```

### Remove unused images
```bash
docker image prune
```

## References

- https://github.com/gabrielecirulli/2048