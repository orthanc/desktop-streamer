#!/bin/bash

vagrant ssh -c 'x11vnc -display :0 -localhost' -- -L 8800:localhost:5900 &
sleep 5
vncviewer localhost:8800
