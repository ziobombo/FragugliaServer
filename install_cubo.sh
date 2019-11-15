#! /bin/bash

ansible-playbook -v -i servers.ini cubo.yml --ask-vault-pass