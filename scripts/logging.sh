#!/bin/bash

# This script runs the docker-compose logs command for a given service and saves the logs to a file.

# Exit the script if any command fails
set -e

# Parse command line arguments
SERVICE_NAME=$1
LOG_FILE=$2

# Check that the service name and log file are provided
if [ -z "$SERVICE_NAME" ] || [ -z "$LOG_FILE" ]; then
  echo "Usage: $0 SERVICE_NAME LOG_FILE"
  exit 1
fi

# Run the docker-compose logs command and save the logs to a file
docker-compose logs --no-color --timestamps $SERVICE_NAME > $LOG_FILE
