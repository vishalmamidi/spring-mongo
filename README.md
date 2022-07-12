# spring-mongo

  ```shell
  helm upgrade --install spring-mongo helm-spring-mongo/ --set image.tag=latest -n demo-namespace --create-namespace --wait
  ```

  ```shell
  helm uninstall spring-mongo -n demo-namespace
  ```


## setup mongodb in kubernetes

```shell
helm upgrade --install mongodb bitnami/mongodb -n mongodb --set auth.username=root,auth.password=password,auth.database=accounts
```




** Please be patient while the chart is being deployed **

MongoDB&reg; can be accessed on the following DNS name(s) and ports from within your cluster:

    mongodb.mongodb.svc.cluster.local

To get the root password run:

    export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace mongodb mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 -d)

To get the password for "root" run:

    export MONGODB_PASSWORD=$(kubectl get secret --namespace mongodb mongodb -o jsonpath="{.data.mongodb-passwords}" | base64 -d | awk -F',' '{print $1}')

To connect to your database, create a MongoDB&reg; client container:

    kubectl run --namespace mongodb mongodb-client --rm --tty -i --restart='Never' --env="MONGODB_ROOT_PASSWORD=$MONGODB_ROOT_PASSWORD" --image docker.io/bitnami/mongodb:5.0.9-debian-11-r3 --command -- bash

Then, run the following command:
mongosh admin --host "mongodb" --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD

To connect to your database from outside the cluster execute the following commands:

    kubectl port-forward --namespace mongodb svc/mongodb 27017:27017 &
    mongosh --host 127.0.0.1 --authenticationDatabase admin -p $MONGODB_ROOT_PASSWORD
