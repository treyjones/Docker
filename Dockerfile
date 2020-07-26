#Create a new image from an existing image of Ubuntu
FROM ubuntu

#declare the maintainer...probably the author
MAINTAINER winnie <wingakso@gmail.com>

RUN apt-get update

CMD ["echo","Yeeaaaay You made it! your first image is live"]