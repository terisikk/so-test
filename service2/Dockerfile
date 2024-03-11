FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Hello again, World!" > /hullo.txt
