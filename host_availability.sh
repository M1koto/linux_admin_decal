#!/bin/bash
if ping -c 1 "$1" &> /dev/null
then
  echo "OK"
else
  echo "Host is not reachable"
fi
