#!/usr/bin/bash

CUSTOM_CONFIG_FILE_PATH="$SNAP_COMMON/up-to-date-config.yaml"
CONFIG_FILE_PATH="$SNAP/etc/up-to-date-config.yaml"

if [[ -f $CUSTOM_CONFIG_FILE_PATH ]]; then
  CONFIG_FILE_PATH=$CUSTOM_CONFIG_FILE_PATH
fi

echo "Using config file: $CONFIG_FILE_PATH."

ros2 run key_teleop key_teleop --ros-args --params-file $CONFIG_FILE_PATH
