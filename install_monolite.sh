#! /bin/bash

ansible-playbook -i servers.ini monolite.yml --ask-vault-pass

