## Requirements

### KinD

[Quick Start](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)

- Mac
  ```bash
  brew install kind
  ```

- Windows
  ```bash
  curl.exe -Lo kind.exe https://kind.sigs.k8s.io/dl/v0.24.0/kind-windows-amd64
  ```

- Linux
  ```bash
  # For AMD64 / x86_64
  [ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
  # For ARM64
  [ $(uname -m) = aarch64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-arm64
  chmod +x ./kind
  sudo mv ./kind /usr/local/bin/kind 
  ```
  
### kubectl
- Mac
  ```bash
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"
  chmod +x ./kubectl
  ```
- Windows
  ```bash
  curl.exe -LO "https://dl.k8s.io/release/v1.31.0/bin/windows/amd64/kubectl.exe"
  ```
  
- Linux
  ```bash
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  ```

## Getting Started

### Create a cluster

- Mac
```bash
kind create cluster --config cluster.yaml
```

- Windows
```bash
.\kind.exe create cluster --config cluster.yaml
```

### Load Docker Image
```bash
kind load docker-image game-server:1.0
```

## Clean up
- Mac
```bash
kind delete cluster
```

- Windows
```bash
.\kind.exe delete cluster
```

