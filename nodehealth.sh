#!/bin/bash
#############
# Author: Manasa
# Created date: 12/3/2025
# This script gives Node health as output
# Version: V1
#############

set -x # Set the script in debug mode

set -e # stops execution when there is an error

set -o pipefail #without this command, execution continues if last command in pipe is valid.
#stops execution even if one command fails when it is used with pipe

set -exo pipefail  #this can be used instead of using above 3 lines
# but not suggestable
df -h

free -g

abcdefghijk | echo 'this is last valid statement in pipe and commands after this are not executed'

nproc

ps -ef | grep amazon

ps -ef | grep amazon | awk -F" " '{print $2}'


