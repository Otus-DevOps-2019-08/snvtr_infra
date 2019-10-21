#!/bin/bash

read -p "Press Enter to validate app-ansible.json or Ctrl-C to stop"
packer validate -var-file=variables-ansible.json app-ansible.json

read -p "Press Enter to validate db-ansible.json or Ctrl-C to stop"
packer validate -var-file=variables-ansible.json db-ansible.json

read -p "Press Enter to build app-ansible.json or Ctrl-C to stop"
packer build -var-file=variables-ansible.json app-ansible.json

read -p "Press Enter to build db-ansible.json or Ctrl-C to stop"
packer build -var-file=variables-ansible.json db-ansible.json
