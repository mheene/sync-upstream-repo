FROM alpine:latest

RUN apk add --no-cache \
			bash \
			git

RUN adduser -D ci

USER ci

ADD *.sh /home/ci

RUN chmod 755 /home/ci/*.sh

ENTRYPOINT ["/home/ci/entrypoint.sh"]
