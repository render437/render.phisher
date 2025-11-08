FROM alpine:latest
LABEL MAINTAINER="https://github.com/render437/render.phisher"
WORKDIR /render.phisher/
ADD . /render.phisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./render.phisher.sh"
