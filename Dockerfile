FROM alpine:latest

RUN apk update
RUN apk --no-cache add openssh-client rsync inotify-tools lsyncd

ENTRYPOINT ["lsyncd", "-nodaemon", "-delay", "0"]
