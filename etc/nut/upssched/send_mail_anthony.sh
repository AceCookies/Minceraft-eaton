#!/bin/bash

EMAIL="email@domainename.com"
SUBJECT="$1"
BODY="$2"
MSMTP_CONF="/etc/nut/msmtp/msmtprc-nut"

echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp -C "$MSMTP_CONF" -a sendgrid "$EMAIL"
