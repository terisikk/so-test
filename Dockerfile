FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Hello, World!" > /hello.txt
