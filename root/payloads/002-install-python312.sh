#!/usr/bin/env bash

cd ~ || exit
wget https://www.python.org/ftp/python/3.12.7/Python-3.12.7.tgz
tar -zxvf Python-3.12.7.tgz

cd Python-3.12.7 || exit

sudo apt-get update
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev

./configure --enable-optimizations
make -j `nproc`
sudo make install

sudo rm /usr/local/bin/python
sudo ln -s /usr/local/bin/python3.12 /usr/local/bin/python
ls -al /usr/local/bin/python

python3.12 -V
python -VV
