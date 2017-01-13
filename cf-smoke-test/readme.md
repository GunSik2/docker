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
