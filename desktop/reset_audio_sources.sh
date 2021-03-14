#!/bin/bash

# Simple script to update audio sources in Pop_OS!

echo "Reseting Audio Sources."
systemctl --user restart pulseaudio
rm -r ~/.config/pulse
pulseaudio -k
echo "Audio Sources Reseted."