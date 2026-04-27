FROM debian:latest
LABEL MAINTAINER="https://github.com/render437/render.phiser"

WORKDIR /render.phisher/
ADD . /render.phisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./render.phisher.sh"]
