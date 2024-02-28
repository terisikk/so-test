FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get -y update && \
     apt-get install -y ssh git

ARG SSH_PRIVATE_KEY

RUN mkdir /root/.ssh && chmod -R 700 /root/.ssh \
    && echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_ed25519 \
    && chmod 0400 /root/.ssh/id_ed25519 && echo "StrictHostKeyChecking no" > /root/.ssh/config \
    && ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN cat -e /root/.ssh/id_ed25519

WORKDIR /app

RUN git clone git@github.com:terisikk/animeippo-api.git
