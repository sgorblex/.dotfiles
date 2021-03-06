#!/bin/bash

# Sgorblex's scripts
# ~/.scripts/vol.sh
# This script set all pulseaudio sinks' volume to the value percentage specified in the command-line argument (requires pulseaudio)


vol=$(echo $1 | cut -d % -f 1)

# pulseaudio command (for each sink)
for i in $(pacmd list-sinks | grep index | cut -d : -f 2); do
	pactl set-sink-volume $i $vol%
done
