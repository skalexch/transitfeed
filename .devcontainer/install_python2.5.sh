#!/bin/bash

echo "Installing dependencies for Python 2.5..."
sudo apt-get update && sudo apt-get install -y \
    wget \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev

echo "Downloading Python 2.5 source..."
wget https://www.python.org/ftp/python/2.5/Python-2.5.tgz
tar -xzf Python-2.5.tgz

echo "Building Python 2.5..."
cd Python-2.5
./configure
make
sudo make install

echo "Cleaning up..."
cd ..
rm -rf Python-2.5 Python-2.5.tgz

echo "Python 2.5 installation complete."
python --version
