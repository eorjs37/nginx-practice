# docker-nginx


## Dockerfile 작성
```Dockerfile
FROM nginx:latest
COPY ./src /usr/share/nginx/html
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
```

## docker build
```bash
docker build --platform linux/amd64 -t eorjs37/nginx-practice .
```

## docker run
```bash
docker run -d --name webserver -p 80:80 eorjs37/nginx-practice
```

## docker run volume
```bash
docker run -d --name webserver -v /etc/letsencrypt:/etc/letsencrypt -p 443:443 eorjs37/nginx-practice
```

## docker hub login
```bash
docker login
# usename과 password 입력
```

## docker hub push
> docker hub에 Repositories 만들어야 한다

```bash
docker push eorjs37/nginx-practice
```

## docker hub pull
```bash
docker pull eorjs37/nginx-practice
```

### 도커 컴퍼즈 빌드 명령어

```bash
docker-compose up --build -d
```