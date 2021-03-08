#!/bin/bash

# Simple script to update audio sources in Pop_OS!

systemctl --user restart pulseaudio
rm -r ~/.config/pulse
pulseaudio -k