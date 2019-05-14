#! /bin/bash

ansible-galaxy --force install ziobombo.ansible_shorewall

ansible-playbook -i servers.ini server0_mini.yml --ask-vault-pass

