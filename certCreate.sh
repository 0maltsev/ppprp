mkdir cred

 openssl req -x509 -sha256 -nodes -days 7 -newkey rsa:2048 -subj '/O=example Inc./CN=app' -keyout cred/app.key -out cred/app.crt
 openssl req -out cred/app.app.csr -newkey rsa:2048 -nodes -keyout cred/app.app.key -subj "/CN=app.app/O=app organization"
 openssl x509 -req -sha256 -days 7 -CA cred/app.crt -CAkey cred/app.key -set_serial 0 -in cred/app.app.csr -out cred/app.app.crt
 openssl req -out cred/app.app.csr -newkey rsa:2048 -nodes -keyout cred/app.app.key -subj "/CN=app.app/O=client organization"
 openssl x509 -req -sha256 -days 7 -CA cred/app.crt -CAkey cred/app.key -set_serial 1 -in cred/app.app.csr -out cred/app.app.crt