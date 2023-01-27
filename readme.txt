#To copy the files from Projects Directory to the <Docker-build-stage> 
 cp -r ~/nginx-simple/project-files/projects/<select any you want to deploy> .
<Note!: The folder containg Java, css, html, etc should be in /nginx-simple directory or it can be customised in Dockerfile configuration>

#Once the Project which has to be deployed is selected, the folder should be copied to the Main folder ie: ~/nginx-simple <depending on the your directory> 


#----Docker Commands required-----

#To build the docker image
docker build -t nginx:1.0 .

#To run container
docker run -d -t --name nginx-custom-webcontent -p 7000:80 nginx:1.0
<Note: Can use custom name, Also the port -p can be used to give a custom port number. In the above example 7000=local port & 80=container port>

#To check running containers
docker ps -a

#To check the current images genrated
docker images

<To delete all the images>
docker image purne -a
 
#To open up the container
docker exec -it <container id> bash

<To stop & delete all the running containers>
docker ps -aq |xargs docker stop |xargs docker rm
 
