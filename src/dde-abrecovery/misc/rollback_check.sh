#!/bin/bash

can_restore=$(dbus-send --system --print-reply=literal --dest=org.lingmo.Lastore1 /org/lingmo/Lastore1 org.lingmo.Lastore1.Manager.CanRollback | grep -oP '(?<=boolean\s)\w+')
if [ "$can_restore" = "true" ]; then
  echo "rollback can process"
  exit 0
fi
echo "can not restore"
exit 1
