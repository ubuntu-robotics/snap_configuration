#!/usr/bin/bash

if ! snapctl is-connected configuration; then
  >&2 echo "Plug 'configuration' isn't connected, \
  please run: snap connect ${SNAP_NAME}:configuration PROVIDER_SNAP:configuration"
  exit 1
fi

CONFIG_FILE_PATH="$SNAP/configuration/etc/up-to-date-config.yaml"

if [[ -f $CONFIG_FILE_PATH ]]; then

  ros2 run key_teleop key_teleop --ros-args --params-file $CONFIG_FILE_PATH

else

  echo "No configuration found!"
  exit 1

fi
