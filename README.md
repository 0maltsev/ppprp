### Пример запроса к API  
curl https://api.agify.io/?name=meelad
### Пример запроса с TLS  
curl -v -HHost:app --resolve "app:$SECURE_INGRESS_PORT:$INGRESS_HOST" \
  --cacert certs/app.crt --cert certs/app.crt --key certs/app.key \
  "https://app.app:$SECURE_INGRESS_PORT/?name=meelad"
### 2 сервиса
Сервер для запросов к API (APIcon)  
NGINX  
### Для запуска использовался миникуб  
minikube start --driver=docker --memory 4096  
### Чтобы развернуть сервис  
запустите файл run.sh
