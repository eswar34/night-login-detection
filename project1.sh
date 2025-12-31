#!/bin/bash
for line in $(grep "Accepted password" auth.log | awk '{print $1"_"$2"_"$3"_"$9"_"$11}'); do
  time=$(echo "$line" | cut -d_ -f3 | cut -d: -f1)
  user=$(echo "$line" | cut -d_ -f4)
  ip=$(echo "$line" | cut -d_ -f5)
  if [ "$time" -lt 8 ] || [ "$time" -ge 18 ]; then
    echo "---------------------------"
    echo "Suspicious Login Detected"
    echo "User: $user"
    echo "IP: $ip"
    echo "Hour: $time"
  fi
done
