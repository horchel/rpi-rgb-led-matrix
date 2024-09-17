FROM balenalib/raspberrypi3-debian:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    python3 \
    python3-dev \
    python3-pip \
    gdb \
    gdbserver

WORKDIR /home/project
ADD . /home/project

CMD ["make"]
