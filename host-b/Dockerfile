FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    iproute2 \
    iputils-ping \
    tcpdump \
    net-tools

CMD ["sleep","infinity"]
