FROM nginx:alpine

WORKDIR /app

COPY . /app/

EXPOSE 80
