FROM nginx:alpine
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY img/icon_evandjefie_noir.png /usr/share/nginx/html
COPY img/profil1.jpeg /usr/share/nginx/html
EXPOSE 80
