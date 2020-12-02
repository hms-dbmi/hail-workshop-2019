#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y docker
sudo yum install -y docker tmux
sudo service docker start
sudo usermod -a -G docker ec2-user
# need to re-login and copy Dockerfile
docker build -t hail .
mkdir -p ~/notebook
# Expose port 8888 for Jupyter
cd ~/notebook && docker run -p 8888:8888 -v ~/notebook:/home/hail/notebook -it hail
