FROM nginx:alpine
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY img/icon_evandjefie_noir.png /usr/share/nginx/html
COPY img/profil1.jpeg /usr/share/nginx/html

# jenkins setup docker container
#RUN apt update && apt install openssh-server sudo -y
#RUN sudo apt install -y default-jdk
#RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 jenkins
#RUN echo "jenkins:jenkins" | chpasswd
#RUN service ssh start
#EXPOSE 22
#WORKDIR /home/ubuntu
