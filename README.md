# ---Nginx-custom-websites---

## Pre-Requisite

* Docker.io to be installed and set up.
* All ports & firewall to be opened in case of Cloud VM's. 
* Git to be installed in the VM's.
* Nano text-editor & Tree if needed. 

## *Use docker containers to develop and deploy custom web-sites on Localhost/Cloud VM's*

## Steps-to be followd:

- Clone this Repo to your local directory.
- Go in to nginx-simple/project-files/projects & select any project that you want to deploy on Nginx.
- Return to the /nginx-simple folder.
- Copy the selected project folder to /nginx-simple directory.
``` cp -r ~/nginx-simple/project-files/projects/<select any you want to deploy> . ``` <-Replace with proper directory->
- Open up the *Dockerfile* in Nano:
``` nano Dockerfile ```
- Replace COPY then the selected folder name, should be replaced in Dockerfile. 
 <Note!: The folder containg Java, css, html, etc should be in /nginx-simple directory or it can be customised in Dockerfile configuration>
- Run the bellow Docker build & run command.

## ----Docker Commands required-----

## To build the docker image:
``` docker build -t nginx:1.0 . ```

## To run container:
``` docker run -d -t --name nginx-custom-webcontent -p 7000:80 nginx:1.0 ```

<Note: Can use custom name, Also the port -p can be used to give a custom port number. In the above example 7000=local port & 80=container port>


## ----Docker Commands extras-----
*These are the required commands to Monitior and delete the containers in Docker*

## To check running containers:
``` docker ps -a ```

## To check the current images genrated:
``` docker images ```

## To delete all the images
``` docker image prune -a ```

## To open up the container:
``` docker exec -it -container id- bash ```

## To stop & delete all the running containers:
``` docker ps -aq |xargs docker stop |xargs docker rm ```
