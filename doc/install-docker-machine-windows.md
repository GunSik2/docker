
## Installation on Windows
```
$ if [[ ! -d "$HOME/bin" ]]; then mkdir -p "$HOME/bin"; fi && \
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-Windows-x86_64.exe > "$HOME/bin/docker-machine.exe" && \
chmod +x "$HOME/bin/docker-machine.exe"
$ docker-machine version
```


## Reference
- https://docs.docker.com/machine/install-machine/
- https://docs.docker.com/machine/drivers/hyper-v/
