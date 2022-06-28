ARG VERSION
FROM ubuntu:$VERSION

# Set the default timezone
ENV TZ Europe/Amsterdam

# Improve build speed by specifying the fastly CDN for apt-repository
ARG DEBIAN_FRONTEND=noninteractive
ENV APT_MIRROR=cdn-fastly.deb.debian.org
RUN sed -ri "s/(httpredir|deb).debian.org/${APT_MIRROR:-deb.debian.org}/g" /etc/apt/sources.list \
 && sed -ri "s/(security).debian.org/${APT_MIRROR:-security.debian.org}/g" /etc/apt/sources.list

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y ca-certificates tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo $TZ > /etc/timezone && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
