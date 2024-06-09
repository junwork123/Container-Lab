# nginx-certbot

## Requirements

- [x] Docker
- [x] Docker Compose
- [x] DNS Configurations
  - `A` - `www` - `${MY_HOSTNAME}`
  - `A` - `@` - `${MY_HOSTNAME}`

## Getting Started
### Run
```bash
docker compose up -d
```

### Stop
```bash
docker compose down -v
```
