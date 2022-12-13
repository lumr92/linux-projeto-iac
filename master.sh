#!/bin/bash
sudo docker swarm init --advertise-addr=197.168.1.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh