
- DOcker install on ubuntu 16.04
```
$ sudo apt-get update
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo apt-key fingerprint 0EBFCD88
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
$ sudo apt-get update
$ apt-cache madison docker-ce
docker-ce | 17.09.0~ce-0~ubuntu | https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
$ sudo apt-get install docker-ce=17.09.0~ce-0~ubuntu
$ sudo docker run hello-world
```

- Post-config
```
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
// Log out and log back
$ docker run hello-world
```



## Reference
- https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository
