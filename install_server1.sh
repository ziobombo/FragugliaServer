#! /bin/bash

ansible-playbook -i servers.ini server1.yml --ask-vault-pass

