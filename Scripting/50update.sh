#!/bin/bash

# Check if AUTO_UPDATE is set
if [ -z "$AUTO_UPDATE" ]; then
  echo "ERROR: AUTO_UPDATE is not set! Use 'yes' or 'no'."
  exit 1
fi

echo "System Update Preference: $AUTO_UPDATE"

# Update system based on AUTO_UPDATE value
if [ "$AUTO_UPDATE" == "yes" ]; then
  echo "Starting system update and upgrade..."
  sudo apt update && sudo apt upgrade -y
  echo "System update completed successfully!"
elif [ "$AUTO_UPDATE" == "no" ]; then
  echo "System update skipped as per user preference."
  else
  echo "ERROR: Invalid value for AUTO_UPDATE. Use 'yes' or 'no'."
  exit 1
fi

# Optional: Clean up unused packages if AUTO_UPDATE is 'yes'
if [ "$AUTO_UPDATE" == "yes" ]; then
  echo "Cleaning up unused packages..."
  sudo apt autoremove -y && sudo apt autoclean
  echo "System cleanup completed successfully!"
fi
