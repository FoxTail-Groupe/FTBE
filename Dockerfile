# Choosing ubuntu as reference point
FROM ubuntu:22.04

# Basic stuff
RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt update && apt-get install -y git wget curl neofetch repo sudo
RUN apt-get install --reinstall --yes ca-certificates
RUN git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt
RUN mkdir /usr/local/share/ca-certificates/cacert.org && \
    wget -P /usr/local/share/ca-certificates/cacert.org http://www.cacert.org/certs/root.crt http://www.cacert.org/certs/class3.crt && \
    update-ca-certificates
RUN useradd -m -u 1000 -U -G sudo FTbuiled
RUN cd /home/FTbuiled
RUN git clone https://github.com/DiamivaeBro/YARBS /home/FTbuiled/YARBS
WORKDIR /home/FTbuiled
