## -*- docker-image-name: "armbuild/ocs-app-mesos:vivid" -*-
FROM armbuild/ocs-distrib-ubuntu:vivid

# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

# Install packages
RUN apt-get -q update && \
    apt-get -y -q upgrade && \
    apt-get install -y -q \
        build-essential \
        libarp1-dev \
        libcurl4-nss-dev \
        libsasl2-dev \
        libsvn-dev \
        maven \
        openjdk-6-jdk \
        python-boto \
        python-dev \
    && apt-get clean

# Install Mesos
RUN wget -qO /tmp/mesos.tar.gz http://www.apache.org/dist/mesos/0.21.0/mesos-0.21.0.tar.gz && \
    tar -C /tmp/ -xzf /tmp/mesos.tar.gz

# Patch rootfs
#ADD ./patches/etc/ /etc/

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
