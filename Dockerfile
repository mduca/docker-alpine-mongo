FROM alpine:3.8

ARG BIND_IP="0.0.0.0"
ENV BIND_IP=${BIND_IP} 

RUN apk add --no-cache mongodb

VOLUME /data/db
EXPOSE 27017 28017

RUN echo "Bind to: $BIND_IP" 

#ENTRYPOINT ["/bin/sh", "-c", "mongod --bind_ip $BIND_IP"]
ENTRYPOINT ["/bin/sh", "-c", "mongod" ]
