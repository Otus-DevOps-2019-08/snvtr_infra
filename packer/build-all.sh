#!/bin/bash

packer validate -var-file=variables.json ubuntu16.json
read -p "Press Enter to continue or Ctrl-C to stop"

packer validate -var-file=variables-i.json immutable.json
read -p "Press Enter to continue or Ctrl-C to stop"

packer build -var-file=variables.json ubuntu16.json
read -p "Press Enter to continue or Ctrl-C to stop"

packer build -var-file=variables-i.json immutable.json
read -p "Press Enter to continue or Ctrl-C to stop"
