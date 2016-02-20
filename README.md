# Nginx - Development Image

A development docker image for [Nginx](https://www.nginx.com/). Used for local
development environments.

`docker build -t v0/nginx github.com/vnought/docker-nginx-dev`

Virtual hosts are expected to be mounted on run, e.g.

`docker run -d -v ./src:/usr/share/nginx -v
./src/config/vhost.conf:/etc/nginx/conf.d/vhost.conf v0/nginx`

It is also expected that application runtimes are run in linked containers. Such as my
php-fpm dev container.
