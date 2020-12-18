#!/usr/bin/env bash
PATH_TO_PROVATE_CONFIGS=${HOME}/Dropbox/config

echo ">> Sublime"

mkdir -p ${HOME}/.config/sublime-text-3/
cp -R ${PATH_TO_PROVATE_CONFIGS}/sublime-text-3/* ${HOME}/.config/sublime-text-3/

echo ">> SSH"

mkdir -p ${HOME}/.ssh
cp -R ${PATH_TO_PROVATE_CONFIGS}/ssh/* ${HOME}/.ssh/


echo ">> Rclone"

mkdir -p ${HOME}/.config/sublime-text-3/rclone/
cp -R ${PATH_TO_PROVATE_CONFIGS}/rclone/* ${HOME}/.config/sublime-text-3/rclone/

