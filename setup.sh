#!/bin/bash

# An array of role names
declare -a roles=("base_setup" "users" "software" "desktop_environment" "network" "security")

# Loop through each role and create the necessary subdirectories and files
for role in "${roles[@]}"; do
  mkdir -p roles/${role}/tasks
  mkdir -p roles/${role}/vars
  touch roles/${role}/tasks/main.yml
  touch roles/${role}/vars/main.yml
done

echo "Directory structure created!"
