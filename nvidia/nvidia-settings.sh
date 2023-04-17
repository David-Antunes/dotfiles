#!/bin/bash

# Fix to enable the computer to sleep and hibernate

sudo systemctl disable nvidia-{resume,hibernate,suspend}.service
sudo systemctl stop nvidia-{resume,hibernate,suspend}.service
