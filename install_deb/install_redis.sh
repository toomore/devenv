#!/bin/bash
apt-get update
apt-get install -y redis-server
service redis-server start
