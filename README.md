
# docker-restart-service (by sehdev kumar)


This is a bash script for container management. Here's a small note explaining its functionality:

- The script starts by displaying the message "Container Management Script" to indicate its purpose.

- It prompts the user to enter the name(s) of the container(s) they want to manage, separated by spaces.

- If no containers are specified, it displays an error message and exits.

- It then prompts the user to enter the action they want to perform, which can be either "restart" or "stop".

- The script validates the action and displays an error message if it's invalid.

- Next, it enables the Docker service to ensure containers are set to restart automatically.

- The script performs the specified action (restart or stop) on each container provided.

- For restart action, it uses the `docker update` command to set the restart policy to "always" for the container.

- For stop action, it stops the container using `docker stop` and updates the restart policy to "no" using `docker update`.

- After each action, it displays a success message.

- Finally, it displays a "Done" message and the line "Happy Time and Enjoy......written by sehdev kumar".

Overall, this script allows the user to manage multiple containers by restarting or stopping them and updating their restart policies.
