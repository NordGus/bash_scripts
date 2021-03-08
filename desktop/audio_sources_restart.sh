#!/bin/bash

# Simple script to update audio sources in Pop_OS!
function reset_audio_sources() {
    systemctl --user restart pulseaudio
    rm -r ~/.config/pulse
    pulseaudio -k
}