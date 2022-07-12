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

