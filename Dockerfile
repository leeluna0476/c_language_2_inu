FROM i386/alpine:latest

RUN apk --update add vim build-base nasm

WORKDIR /srcs

CMD [ "/bin/sh" ]
