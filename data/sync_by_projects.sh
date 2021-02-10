#!/usr/bin/env bash

fold_name=backup_$(date +%F)
ready_path=synced_shouldbe_removed

sync() {
	rclone mkdir ${serv_name}:/${fold_name}/$(basename $(pwd))
	echo "rclone sync --progress ./${local_folder_name} ${serv_name}:/${fold_name}/$(basename $(pwd))"
	rclone sync --transfers=${transfers} --progress ./${local_folder_name} ${serv_name}:/${fold_name}/$(basename $(pwd)) && \
	mkdir -p ${ready_path}/${local_folder_name} && \
	mv ./${local_folder_name}/* ${ready_path}/${local_folder_name}
}

echo "Sync cvl"
serv_name="cvl-gdrive"
local_folder_name="cvl_bak"
transfers=4
sync


echo "Sync personal"
serv_name="my-mail-free"
local_folder_name="free-bak"
transfers=12
sync


echo "Sync sk ..."
serv_name="my-sk-mail-plo"
local_folder_name="sk-bak"
transfers=12
sync

