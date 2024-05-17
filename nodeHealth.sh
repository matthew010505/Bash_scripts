#!/bin/bash
##########################
#Author : Matthew
#Date : 15/05/2024
#
# This Script is Used to check the node health
#
# Version :v1
# #######################
#

set -x #debug mode
set -e #exits the script when error is present
set -o pipefail  #used to apply set -e even when pipe is present

df -h

free -g


nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
