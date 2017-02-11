#!/bin/bash

#allow ansible-pull without specifying a host file                              
echo "localhost ansible_connection=local" > /etc/ansible/hosts

ansible-pull -U https://github.com/djatlantic/ansible-aws.git -d ~/ansible aws-docker-host-bootstrap.yml -vvv
