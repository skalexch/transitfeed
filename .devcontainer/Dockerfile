FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev

# Download and build Python 2.5
RUN wget https://www.python.org/ftp/python/2.5/Python-2.5.tgz && \
    tar -xzf Python-2.5.tgz && \
    cd Python-2.5 && \
    ./configure && \
    make && \
    make install

# Clean up
RUN rm -rf Python-2.5 Python-2.5.tgz

# Set Python 2.5 as default
RUN ln -sf /usr/local/bin/python2.5 /usr/bin/python
