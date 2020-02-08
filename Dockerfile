#https://github.com/DeftWork/samba
#https://hub.docker.com/r/elswork/samba

FROM alpine:latest

RUN apk update && apk upgrade && apk add bash samba-common-tools samba && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

EXPOSE 445 137 138 139

ENTRYPOINT ["/entrypoint.sh"]
CMD ["-h"]
