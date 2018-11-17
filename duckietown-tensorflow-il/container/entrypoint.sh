#!/bin/bash

echo "Starting Xvfb"
Xvfb :99 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &
sleep 2

echo "Executing command $@"
export DISPLAY=:99

exec "$@"
