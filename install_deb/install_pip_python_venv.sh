#!/bin/bash
apt-get update
apt-get install -y python
curl https://bootstrap.pypa.io/get-pip.py | python
pip install virtualenv
