## cf-smoke-test
- Building & pushing an image from a Dockerfile
```
cd cf-smoke-test
docker build -t cgshome2/cf-smoke-test .
```

- Running/Testing app
```
sudo docker run -e "CONFIG_CONTENT=$(cat /tmp/go/smoke_test.json)" cgshome2/cf-smoke-test
```


- Push an image to Docker Hub
```
sudo docker push cgshome2/cf-smoke-test
```


- smoke_test.json
```
    cat > /tmp/smoke_test.json <<EOF
  {
      "suite_name"           : "CF_SMOKE_TESTS",
      "api"                  : "$target",
      "apps_domain"          : "$apps_domain",
      "user"                 : "$user",
      "password"             : "$password",
      "org"                  : "CF-SMOKE-ORG",
      "space"                : "CF-SMOKE-SPACE",
      "cleanup"              : true,
      "use_existing_org"     : false,
      "use_existing_space"   : false,
      "logging_app"          : "",
      "runtime_app"          : "",
      "enable_windows_tests" : true,
      "enable_etcd_cluster_check_tests" : false,
      "etcd_ip_address"      : "",
      "backend"              : "diego",
      "skip_ssl_validation"  : true,
      "enable_windows_tests" : false,
      "artifacts_directory"  : "/tmp/smoke-artifacts"
  }

```
