FROM alpine:3

RUN apk update && apk add --no-cache radvd && mkdir /run/radvd

COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "-n"]
