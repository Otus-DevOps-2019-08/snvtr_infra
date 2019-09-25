#!/bin/bash

#  --machine-type=f1-micro \
#  --boot-disk-size=10GB \

gcloud compute instances create reddit-app-full \
  --image=reddit-full \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=scripts/startup-script.sh

