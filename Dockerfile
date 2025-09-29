# sets the base image to use for the image 
FROM alpine
# sets the working directory for any instructions followed in the Dockerfile 
WORKDIR /app
# copies files from the source to the destination in the image filesystem 
COPY network_monitor2.sh . 
# execute any commands on top of the base image 
RUN apk update && apk add bash git bind-tools curl 

COPY . .

CMD ["bash", "network_monitor2.sh"]




