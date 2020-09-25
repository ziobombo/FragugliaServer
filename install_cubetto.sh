#! /bin/bash

ansible-playbook -i servers.ini cubetto.yml --ask-vault-pass

