FROM alpine:latest

RUN apk update
RUN apk --no-cache add openssh-client rsync lsyncd

ENTRYPOINT ["lsyncd", "-nodaemon", "-delay", "0"]
