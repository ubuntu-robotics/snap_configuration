#!/usr/bin/bash

# SNAP_COMMON since SNAP_USER_COMMON cannot be found by a daemon or hook (since root)
URL="https://raw.githubusercontent.com/ubuntu-robotics/snap_configuration/howto/pull_configuration_from_a_server/key_teleop.yaml"
curl $URL -o $SNAP_COMMON/up-to-date-config.yaml
# GH raw pages are cached for 5 mins: https://stackoverflow.com/questions/46551413/github-not-update-raw-after-commit/55615178#55615178
# So we cannot update faster than every 5 minutes
