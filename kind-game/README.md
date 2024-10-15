https://kind.sigs.k8s.io/docs/user/quick-start/

## Quick Start
- Mac
```bash
brew install kind
```

- Windows
```bash
curl.exe -Lo kind.exe https://kind.sigs.k8s.io/dl/v0.24.0/kind-windows-amd64
```

## Create a cluster

- Mac
```bash
kind create cluster --config cluster.yaml
```

- Windows
```bash
.\kind.exe create cluster --config cluster.yaml
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

