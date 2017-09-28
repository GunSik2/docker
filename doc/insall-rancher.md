## Install Rancher

- Install Server
```
docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:stable
docker ps 
docker logs -f 3210dfa40b7c  #container-id
```
- Install Host
  - Hosts: Add Host > Custom 
  - Rancher 서버 방화벽 설정 추가: UDP ports 500 and 4500
  - Host 등록 대상 서버에서 명령 실행
```
curl https://releases.rancher.com/install-docker/17.06.sh | sh
// Add Host > Custom 명령 실행
sudo docker run -e CATTLE_AGENT_IP="54.209.246.179"  --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.2.6 http://54.209.246.179:8080/v1/scripts/0EE13560259E9D1DE7A9:1483142400000:lHSvehYfA76dXoDfqSSYrIjWg
```

## Reference
- https://rancher.com/docs/rancher/latest/en/
