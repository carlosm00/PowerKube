kubectl create secret generic mysql-root-pass --from-literal=password=<add password>

kubectl create secret generic mysql-user-pass --from-literal=username=<add username> --from-literal=password=<add password>

kubectl create secret generic mysql-db-url --from-literal=database=<add database>
