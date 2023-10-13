#!/bin/bash
custom_datetime=$(date +"%Y-%m-%d/%H-%M")
git add .
git commit -m $custom_datetime
git push
