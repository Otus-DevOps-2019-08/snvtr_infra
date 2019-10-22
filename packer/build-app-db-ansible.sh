#!/bin/bash

read -p "Press Enter to validate app.json or Ctrl-C to stop"
packer validate -var-file=variables.json app.json

read -p "Press Enter to validate db.json or Ctrl-C to stop"
packer validate -var-file=variables.json db.json

read -p "Press Enter to build app.json or Ctrl-C to stop"
packer build -var-file=variables.json app.json

read -p "Press Enter to build db.json or Ctrl-C to stop"
packer build -var-file=variables.json db.json
