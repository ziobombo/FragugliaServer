#! /bin/bash

ansible-galaxy install nginxinc.nginx
ansible-galaxy install geerlingguy.certbot
ansible-playbook -i server0.ini fragugliaserver.yml --ask-vault-pass
