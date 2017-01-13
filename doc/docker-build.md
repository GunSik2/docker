
## Create & Running docker web app

### hello-python 
- Building an image from a Dockerfile
```
git clone https://github.com/GunSik2/docker
cd docker/hello-python
docker build -t cgshome2/hello-python .
```

- Running/Testing app
```
docker run -d -P cgshome2/hello-python python app.py
// check port
docker ps -l
// if used docker-machine, check ip 
docker-machine ls 
// check log
sudo docker logs -f gloomy_poitras 
```

- Push an image to Docker Hub
```
docker login --username=<user_username>
docker push cgshome2/hello-python
```

### hello-nodejs 
- Building an image from a Dockerfile
```
cd docker/hello-nodejs
docker build -t cgshome2/hello-nodejs .
```

- Running/Testing app
```
docker run -d -P cgshome2/hello-nodejs 
```

- Push an image to Docker Hub
```
docker push cgshome2/hello-nodejs
```

## cf-test-go
- Building & pushing an image from a Dockerfile
```
cd docker/cf-test-go
. build.sh
```

- Running/Testing app
```
sudo docker run -e "PORT=4568" -d -p 4568:4568 cgshome2/cf-test-go
```

- cf push
```
cf push cf-test-go -o cgshome2/cf-test-go
```

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
