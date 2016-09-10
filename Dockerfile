# Yara https://virustotal.github.io/yara/

# Docker best practices
# https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/

# Alpine is a very minimal linux system (about 5MB)
# https://hub.docker.com/_/alpine/
# https://github.com/gliderlabs/docker-alpine (for more information)
FROM alpine:3.4

MAINTAINER Jacolon Walker, <jay@stellersjay.pub>

ADD https://github.com/VirusTotal/yara/archive/v3.5.0.tar.gz /root

WORKDIR /root

RUN apk add --no-cache \
    autoconf \
    automake \
    g++ \
    gcc \
    libtool \
    make

RUN tar xvf v3.5.0.tar.gz && \
    cd yara-3.5.0 && \
    ./bootstrap.sh && \
    ./configure && \
    make && \
    make install && \
    rm -rf /root/v3.5.0.tar.gz && \
    rm -rf /root/yara-3.5.0

CMD ["ash"]
