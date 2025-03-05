#!/bin/bash

# Check for MONITOR_MODE
if [ -z "$MONITOR_MODE" ]; then
  echo "ERROR: MONITOR_MODE is not set! Use 'cpu', 'memory', or 'disk'."
  exit 1
fi

echo "Monitoring system resources in $MONITOR_MODE mode..."

case "$MONITOR_MODE" in
  cpu)
    echo "Monitoring CPU usage..."
    top -bn1 | grep "Cpu(s)"
    ;;
  memory)
    echo "Monitoring Memory usage..."
    free -h
    ;;
  disk)
    echo "Monitoring Disk usage..."
    df -h
    ;;
  *)
    echo "ERROR: Unknown MONITOR_MODE: $MONITOR_MODE"
    exit 1
    ;;
esac
