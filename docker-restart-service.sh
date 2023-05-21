#!/bin/bash

echo "Container Management Script"

# Prompt for container names
read -p "Enter container name(s), separated by spaces: " containers

# Check if any containers were provided
if [[ -z $containers ]]; then
  echo "No containers specified. Exiting."
  exit 1
fi

# Prompt for action
read -p "Enter 'restart' or 'stop' to perform the action: " action

# Validate the action
if [[ $action != "restart" ]] && [[ $action != "stop" ]]; then
  echo "Invalid action. Exiting."
  exit 1
fi

echo "Now Going to start Docker service enabled to restart the specific containers"
systemctl enable docker.service
# Perform the action on each container
for container in $containers; do
  echo "$action container: $container"

  if [[ $action == "restart" ]]; then
    docker update --restart=always $container
  elif [[ $action == "stop" ]]; then
     docker stop $container
     docker update --restart=no $container
     echo "Container stopped and restart policy updated successfully."
   fi
  echo "Done.Happy Time and Enjoy......written by sehdev kumar"
done

