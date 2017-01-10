
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
