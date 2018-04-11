FROM ubuntu:16.04

RUN apt update && apt install -y libdb-dev libleveldb-dev libsodium-dev zlib1g-dev libtinfo-dev libgmp-dev

RUN rm -rf /app && mkdir /app && mkdir /kdata

COPY constellation-node /app/constellation-node
COPY sample.conf /kdata/sample.conf

WORKDIR /app

VOLUME /kdata

ENTRYPOINT ["/app/constellation-node","/kdata/sample.conf]
