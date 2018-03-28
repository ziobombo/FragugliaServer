#! /bin/bash

ansible-playbook -i server0.ini fragugliaserver.yml --ask-vault-pass
