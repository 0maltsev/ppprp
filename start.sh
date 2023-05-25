#!/bin/bash
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.17.2 sh -

cd istio-1.17.2
export PATH=$PWD/bin:$PATH
istioctl manifest apply --set profile=demo -y
istioctl install --set profile=demo --set meshConfig.outboundTrafficPolicy.mode=REGISTRY_ONLY -y
cd ..

kubectl apply -f app/app.yaml
kubectl apply -f manifests/app/gateway.yaml
kubectl apply -f manifests/app/egress.yaml
kubectl apply -f manifests/nginx/gateway.yaml
kubectl apply -f manifests/nginx/nginx.yaml

