#!/bin/sh

while true
do
  time="$(date +%Y-%M-%dT%H:%M:%S%z)" && resp="$(curl -sS "$1")" && host="$(echo "$resp" | jq -r '.service')" && echo "[$time] $1 -> $host"
  sleep 1
done
