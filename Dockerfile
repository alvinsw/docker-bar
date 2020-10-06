FROM alpine:latest

RUN apk update
RUN apk --no-cache add openssh-client rsync inotify-tools lsyncd duplicity postgresql-client py3-paramiko

ENTRYPOINT ["/bin/sh"]
