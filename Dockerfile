FROM alpine

WORKDIR /app

COPY network_monitor2.sh . 

RUN apk update && apk add bash git bind-tools curl 

COPY . .

CMD ["bash", "network_monitor2.sh"]




