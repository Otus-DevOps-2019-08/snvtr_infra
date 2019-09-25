#!/bin/bash
#  --machine-type=f1-micro \
#  --boot-disk-size=10GB \

gcloud compute instances create reddit-app \
  --image=reddit-1569412997 \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup_script.sh

