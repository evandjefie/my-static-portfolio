FROM nginx:alpine

LABEL maintainer="evandjefie"

WORKDIR /usr/share/nginx/app

COPY . /usr/share/nginx/app/

EXPOSE 80
