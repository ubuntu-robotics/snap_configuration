#!/usr/bin/bash -e

echo "Make sure to run this application with enough privilege."

cp $SNAP/etc/up-to-date-config.yaml $SNAP_COMMON/

echo "The configuration can now be edited in the file $SNAP_COMMON/up-to-date-config.yaml."
