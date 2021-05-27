# NGINX+ Docker Lab

## Links
- [Deploying NGINX and NGINX Plus on Docker](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/)

## Docker

```bash
# build
docker build --no-cache -t nginxplus .
# start
docker run --name mynginxplus -p 80:80 -d nginxplus
```

Examples
```bash
docker run --name mynginx2 --mount type=bind,source=/var/www,target=/usr/share/nginx/html,readonly --mount source=/var/nginx/conf,target=/etc/nginx/conf,readonly -p 80:80 -d nginx
```

## Run
```bash
make
make logs
```