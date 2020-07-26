# Docker
The Hello-world Version

Creating Docker -file
#Step 1.
Create a file in the directory you want a file and name it Dockerfile.file

 Step 2. 
Write the commands for the image

e.g
#Create a new image from an existing image of Ubuntu
FROM ubuntu

#declare the maintainer...probably the author
MAINTAINER winnie <wingakso@gmail.com>

RUN apt-get update

CMD ["echo","Yeeaaaay You made it! your first image is live"]

Step 3.
Build the image
	$ docker build -t imagename:tag .
	- docker command to notify cmd what file to execute. build command to build the image
		image name for the image and a tag eg latest. and lastly the dockerfile location(use . for current location)
Step 4.
Run the image
	$docker run imageid
Others:
view images= $docker images
Remove images = $docker rm imagesid

Containers:
Running a container from the image
#Syntax: docker run -itd --name <container-name> -p <host-port>:<port in container> image-name:tag
# note in the above syntax:
# -d : represents (detached mode), note that if you dont run this in detached mode, the life of the container will be the life of the terminal in which you are executing it.
# -p : represents the host-port to container-port mapping, if you substitute it with -P you will get a random port allocated by docker
# --name : represents the name of the container 
