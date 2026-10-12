#!/usr/bin/env bash

# Colors
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
BOLD="\033[1m"
RESET="\033[0m"

# Validate input
if [ "$#" -eq 0 ]; then
  printf "${RED}❌ Usage:${RESET} del <file|folder>...\n"
  exit 1
fi

echo
printf "${YELLOW}${BOLD}🗑️  Items to delete:${RESET}\n"
for item in "$@"; do
  if [ -d "$item" ]; then
    printf "   ${RED}📁 %s/${RESET}\n" "$item"
  elif [ -e "$item" ]; then
    printf "   ${RED}📄 %s${RESET}\n" "$item"
  else
    printf "   ${YELLOW}⚠️  %s (not found)${RESET}\n" "$item"
  fi
done
echo

printf "${CYAN}Delete these items? [${GREEN}y${CYAN}/${RED}N${CYAN}]: ${RESET}"
read -r confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  printf "${YELLOW}❌ Delete cancelled.${RESET}\n"
  exit 1
fi

rm -rf -- "$@"
if [ $? -eq 0 ]; then
  printf "${GREEN}✔ Deleted successfully.${RESET}\n"
fi