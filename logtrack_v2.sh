#!/bin/bash

# trap cleanup INT

# function cleanup() {
#   while read pid; do kill $pid; echo killed $pid; done < /tmp/pids
# }

# : > /tmp/pids

# for log_relative_path in $(find logs -follow | grep '.log'); do
#   ./addTail n logs $log_relative_path
# done



# inotifyd ./addTail `pwd`/flat_logs:n 
inotifywait -e modify,access,create -r -q --format '%w%f' logs/ | while read FILE
do
  echo "event received"
  echo "$FILE"
  tail -F $FILE
done