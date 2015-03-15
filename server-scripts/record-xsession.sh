#!/bin/bash
ffmpeg -f x11grab -vc x264 -s vga -r 30 -i :0 /vagrant/session-recording.avi 
