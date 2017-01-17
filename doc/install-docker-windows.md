
## Prerequiste
- Vagrant

## Install docker vm
- Install docker-machine
```
curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-Windows-x86_64.exe > $HOME/bin/docker-machine.exe
chmod +x $HOME/bin/docker-machine.exe
```
- Install docker vm
```
docker-machine.exe create --driver virtualbox test
docker-machine.exe ls
eval $(docker-machine.exe env test)

docker-machine ip test  // Get the host IP
docker-machine.exe env test
```

- Start & Stop docker vm
```
docker-machine stop test
docker-machine start test
```


## Docker Service deploy
- golang
```
$ git clone https://github.com/golang/example
$ cd example/outyet/
$ cat Dockerfile
FROM golang:onbuild
EXPOSE 8080
$ docker build -t outyet .
$ docker run --publish 6060:8080 --name test --rm outyet
```

- golang
```
cd c:\Users\user\Workspace\test
vi app.go
docker run --rm -v /c/Users/user/Workspace/test:/usr/src/myapp -w /usr/src/myapp golang:1.6 go build -v
```

- redis
```
docker run -p 6379:6379 --name redis -d redis 
nc 192.168.99.100:6379  # Windows 포트 확인
nc 127.0.0.1:6379  # Ubuntu 포트 확인
docker run -it --link redis:redis --rm redis sh -c 'exec redis-cli -h "192.168.99.100" -p "6379"'
192.168.99.100:6379> keys *
(empty list or set)
docker run -it --link redis:redis --rm redis sh -c 'exec  redis-cli'
docker run -it --link redis:redis --rm redis sh -c 'exec  redis-cli keys "*"'
docker run -it --link redis:redis --rm redis sh -c 'exec  redis-cli keys "*" | xargs redis-cli del'
```

- mysql
```
docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=password -d mysql --character-set-server=utf8 --collation-server=utf8_general_ci
nc 192.168.99.100:3306  # Windows 포트 확인
nc 127.0.0.1:3306  # Ubuntu 포트 확인
nc 192.168.59.103:3306 # Mac 포트 확인
# create database
docker run -it --link mysql:mysql --rm mysql sh -c 'exec mysql -h"192.168.99.100" -P"3306" -uroot -p"password" -e "create database PaasXpertPortal"' # Windows mysql cli 접속
docker run -it --link mysql:mysql --rm mysql sh -c 'exec mysql -h"127.0.0.1" -P"3306" -uroot -p"password" -e "create database PaasXpertPortal"' # Ubuntu mysql cli 접속
docker run -it --link mysql:mysql --rm mysql sh -c 'exec mysql -h"192.168.59.103" -P"3306" -uroot -p"password" -e "create database PaasXpertPortal"' #  Mac mysql cli 접속
# mysql console access database
docker run -it --link mysql:mysql --rm mysql sh -c 'mysql -h"192.168.99.100" -P"3306" -uroot -p"password"'
# charset check
mysql> status
mysql> show variables like 'c%';
```


## Reference
- https://blog.golang.org/docker
