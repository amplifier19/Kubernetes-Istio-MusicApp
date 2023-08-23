#!/bin/bash

while true; do
    curl -s -o /dev/null -w "%{http_code}\n" https://homelabamplifier.com
    sleep 1
done

