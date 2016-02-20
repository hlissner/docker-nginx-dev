FROM nginx
MAINTAINER Henrik Lissner <henrik@lissner.net>

RUN rm -vf  /etc/nginx/nginx.conf
RUN rm -vfr /usr/share/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN sed -i -e "s/worker_processes 1/worker_processes $(cat /proc/cpuinfo |grep processor | wc -l)/" /etc/nginx/nginx.conf
