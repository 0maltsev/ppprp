
 minikube kubectl -- create -n istio-system secret generic my-credential --from-file=tls.key=cred/app.app.key --from-file=tls.crt=cred/app.app.crt --from-file=ca.crt=cred/app.crt