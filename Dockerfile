FROM ubuntu:latest

ARG SSH_PRIVATE_KEY

RUN echo "${SSH_PRIVATE_KEY}" > /root/test.txt
