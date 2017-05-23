#!/usr/bin/env bash
# git
apt-add-repository ppa:git-core/ppa -y

apt update
apt upgrade

# from above
apt install -y git

# general
apt install -y vim chromium-browser unzip gparted synaptic landscape-common gdebi curl whois
# python
apt install -y python3-pip libpython3-dev python3-dev

# postgresql
apt install -y postgresql-client postgresql postgresql-contrib postgresql-server-dev-all
# redis
apt install -y redis-server
# general libs
apt install -y libjpeg-dev libfreetype6-dev libffi-dev libsqlite3-dev
# recommended by pyenv
apt install -y libbz2-dev libreadline-dev llvm libncurses5-dev libncursesw5-dev

# compiz
# apt install -y compizconfig-settings-manager compiz-plugins compiz-plugins-extra unity-tweak-tool
# pip updates
pip install -U pip setuptools virtualenv ipython

