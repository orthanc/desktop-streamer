This file utlines the current high level plan for this project. I.e. what is actually going to be attempted.

The idea is to end up with a fully scripted immutable deployment, hence heavy use of Vagrant & Puppet

It should be noted that a lot of the purpose of this project is for me to learn these technologies, so this plan may feel odd to those that actually know what they're doing.

# Stage 1: Virtual Machine with Headless X

Setup a Base VM using Vagrant

Provision XVFB or similar headless XServer using puppet

Provision ratpoison or other similar minimal window manager

Provision x11vnc or similar to allow remote control of the headless XServer while progressing

Ensure these items start on startup of the VM

# Stage 2: Stream Headless XSession to browser

Provision DJango web framework

setup mimmal script so web request can start FFMPeg conversion of XSession to video and stream back to browser.

# Stage 3: Stream to Chrome Cast

Setup minimal chrome cast application to allow chromecast to access above stream onto TV

# Stage 4: Automate and Stream some Web Content



