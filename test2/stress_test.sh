#!/bin/bash

ENDPOINT="http://localhost:8888"

while true; do
    curl -X GET "$ENDPOINT"
    sleep 0.1  
done
