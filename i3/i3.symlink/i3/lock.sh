#!/bin/bash

# to execute convert the package imagemagick needs to be installed
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png
