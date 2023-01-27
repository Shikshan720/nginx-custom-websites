#Get Nginx latest package and install packages.

#It would also run update, nano & tree layers required to open up the container 

FROM nginx
MAINTAINER root
RUN apt-get update && apt-get install -y nano
RUN apt-get install -y tree
COPY <replace-with-folder-name> /usr/share/nginx/html

