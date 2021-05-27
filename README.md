# NGINX+ Docker Lab

## Links
- [Deploying NGINX and NGINX Plus on Docker](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/)

## Config & Data
- `./nginx` is mounted to `/etc/nginx` and it contains the full configuration as it comes from NGINX
- `./data` is mount to `/data`

## Run
```bash
# run the nginx
make
```

```bash
# see the logs
make logs
```

```bash
# open console
make shell
```

See `./Makefile` for more options.

## Docker
```bash
# build
docker build --no-cache -t nginxplus .
# start
docker run --name mynginxplus -p 80:80 -d nginxplus
```

```bash
# Example
docker run --name mynginx2 --mount type=bind,source=/var/www,target=/usr/share/nginx/html,readonly --mount source=/var/nginx/conf,target=/etc/nginx/conf,readonly -p 80:80 -d nginx
```