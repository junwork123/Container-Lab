# Container-Lab

### find specific port
```bash
sudo ss -tulpn | grep :80
```

## Requirements

### Install Docker
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

# Docker Login
docker login
```


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
