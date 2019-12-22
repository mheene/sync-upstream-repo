FROM alpine:latest

RUN apk add --no-cache \
			bash \
			git

RUN adduser -D afd

USER afd

ADD *.bash /home/afd

ENTRYPOINT ["/home/afd/entrypoint.bash"]
