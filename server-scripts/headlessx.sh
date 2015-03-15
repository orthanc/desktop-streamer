#!/bin/sh

Xvfb -screen 0 800x600x16 -ac &
DISPLAY=:0 fluxbox
