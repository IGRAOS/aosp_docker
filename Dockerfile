FROM ubuntu:18.04

LABEL maintainer=dmitvitalii@gmail.com

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk git-core gnupg flex bison gperf \
    build-essential zip curl zlib1g-dev gcc-multilib g++-multilib \
    libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev \
    lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip vim \
    libssl-dev gettext imagemagick ccache schedtool apt-utils bc \
    python python3 python-pip python3-pip python-dev python3-dev \
    cpio module-init-tools kmod swig device-tree-compiler mtools \
    rsync dosfstools gdisk

RUN pip install mako

ADD https://storage.googleapis.com/git-repo-downloads/repo /usr/local/bin/repo
RUN chmod a+x /usr/local/bin/*

WORKDIR /aosp/

ENTRYPOINT [ "sh", "-c" ]
