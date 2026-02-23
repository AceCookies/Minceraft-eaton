#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/"  # Ton URL ici

curl -s -H "Content-Type: application/json" \
     -X POST \
     -d @- "$WEBHOOK_URL"