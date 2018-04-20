FROM ubuntu:16.04
MAINTAINER Kishor V <developer.kishor@gmail.com>

RUN apt-get update -y && \
    apt-get install -y \
        git-core \
        openjdk-8-jdk \
        openjdk-8-jre \
        gnupg \
        flex \
        bison \
        gperf \
        build-essential \
        zip \
        curl \
        zlib1g-dev \
        gcc-multilib \
        g++-multilib \
        libc6-dev-i386 \
        lib32ncurses5-dev \
        x11proto-core-dev \
        libx11-dev \
        lib32z-dev \
        ccache \
        libgl1-mesa-dev \
        libxml2-utils \
        xsltproc \
        unzip \
        python \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > repo && \
    chmod a+x repo && \
    install repo /usr/local/bin && \
    rm repo
RUN mkdir DotOS && \
    cd DotOS
RUN repo init -u git://github.com/DotOS/manifest.git -b dot-o && \
    repo sync  -f --force-sync --no-clone-bundle


