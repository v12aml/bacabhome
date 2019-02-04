#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

NAME=$1
STREAMING_PORT=$2
DISPLAY_IP=$3
DISPLAY_PORT=$4

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

ls /dev/video0
ip a
echo $NAME $STREAMING_PORT $DISPLAY_IP $DISPLAY_PORT
sleep 1

python3 yolo.py $NAME $STREAMING_PORT $DISPLAY_IP $DISPLAY_PORT
