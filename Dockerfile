FROM alpine:latest

RUN apk --update add vim build-base

WORKDIR /srcs

CMD [ "/bin/sh" ]
