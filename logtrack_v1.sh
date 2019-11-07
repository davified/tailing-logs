#!/bin/bash

trap cleanup INT

function cleanup() {
  while read pid; do kill $pid; echo killed $pid; done < /tmp/pids
}

: > /tmp/pids

for log_relative_path in $(find logs -follow | grep '.log'); do
  ./addTail n logs $log_relative_path
done

inotifyd ./addTail `pwd`/logs:n 