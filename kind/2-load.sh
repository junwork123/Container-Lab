kind load docker-image game-server:1.0

kind load docker-image game-server:1.0-slim

kind load docker-image game-server:1.0-tiny

kind load docker-image game-server:1.0-tiny-special

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
kubectl wait -n ingress-nginx --for=condition=ready pod --selector=app.kubernetes.io/component=controller --timeout=180s
kubectl apply -f ingress.yaml