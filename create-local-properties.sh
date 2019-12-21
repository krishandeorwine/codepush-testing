#!/usr/bin/env bash
# Creates an .env and local.properties from ENV variables for use with react-native-config

ENV_WHITELIST=${ENV_WHITELIST:-"^AN_"}
printf "Creating an local.properties file with the following whitelist:\n"
printf "%s\n" $ENV_WHITELIST
set | egrep -e $ENV_WHITELIST | sed 's/^AN_//g' > ./android/local.properties
printf "\n local.properties created with contents:\n\n"
cat ./android/local.properties