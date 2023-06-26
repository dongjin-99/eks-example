#!/bin/bash

ENDPOINT="http://localhost:8888"
count=0

while true; do
    for _ in {1..10}; do
        curl -X GET "$ENDPOINT" >/dev/null 2>&1 &
    done

    wait
    echo "count: $count"
    ((count++))
    sleep 0.1
done
