FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Hello again, World!" > /hello.txt
