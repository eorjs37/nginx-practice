FROM nginx:latest
COPY ./src /usr/share/nginx/html
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/nginx.conf /etc/nginx/nginx.conf