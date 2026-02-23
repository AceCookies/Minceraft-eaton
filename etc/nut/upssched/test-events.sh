#!/bin/bash

SCRIPT="/etc/nut/upssched/upssched-cmd"
HOST="$(hostname)"

# Couleurs
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[36m"
RESET="\e[0m"

test_event() {
    local event="$1"
    echo -e "${YELLOW}>> Simulation événement : ${BLUE}$event${RESET}"
    "$SCRIPT" "$event"
    echo -e "${GREEN}✔ Événement '$event' envoyé depuis ${HOST}${RESET}"
    echo
    sleep 2
}

clear
echo -e "${BLUE}=====================================================${RESET}"
echo -e "${BLUE}      TEST DES ALERTES UPS — SERVEUR ${HOST}${RESET}"
echo -e "${BLUE}=====================================================${RESET}"
echo

test_event notify_onbatt
test_event cancelshutdown

echo -e "${RED}⚠ shutdowncritical non simulé pour éviter l'extinction réelle.${RESET}"
echo
echo -e "${GREEN}Test terminé.${RESET}"