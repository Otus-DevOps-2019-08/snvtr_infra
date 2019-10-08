#!/bin/bash

read -p "Press Enter to validate ubuntu16.json or Ctrl-C to stop"
packer validate -var-file=variables.json ubuntu16.json

read -p "Press Enter to validate immutable.json or Ctrl-C to stop"
packer validate -var-file=variables-i.json immutable.json

read -p "Press Enter to build ubuntu16.json or Ctrl-C to stop"
packer build -var-file=variables.json ubuntu16.json

read -p "Press Enter to build immutable.json or Ctrl-C to stop"
packer build -var-file=variables-i.json immutable.json
