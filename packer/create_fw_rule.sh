#!/bin/bash

gcloud compute firewall-rules create "puma-server" --allow tcp:9292 \
      --source-ranges="0.0.0.0/0" \
      --description="puma server inbound" \
      --target-tags="puma-server"

