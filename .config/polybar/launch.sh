#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch polybars
polybar ilyabarleft & polybar ilyabarright &
