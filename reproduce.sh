#!/bin/bash

unitd-debug --no-daemon --control unix:/var/run/control.unit.sock &

sleep 1

kill -15 "$(cat /var/run/unit.pid)"

sleep 1

unitd-debug --no-daemon --control unix:/var/run/control.unit.sock &

sleep 1

printf "\n\nExecution log:\n"
grep -a /var/log/unit.log -e 'unix'