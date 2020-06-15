#! /bin/bash

ansible-galaxy install ziobombo.ansible_shorewall

ansible-playbook -i servers.ini server0.yml --ask-vault-pass

