#!/bin/sh
sudo yum remove docker -y && \
sudo yum update -y && \
sudo yum install docker -y && \
echo `docker -v` installed
