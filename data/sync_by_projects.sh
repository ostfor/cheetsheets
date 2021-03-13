#!/usr/bin/env bash

fold_name=backup_2021-03-02
#2021-03-11
#$(date -I) 
#$(date +%F)
ready_path=synced_shouldbe_removed

sync() {
	rclone mkdir ${serv_name}:/${fold_name}/$(basename $(pwd))
	echo "rclone copy --bwlimit 80M:80M --progress ./${local_folder_name} ${serv_name}:/${fold_name}/$(basename $(pwd))"
	rclone copy --transfers=${transfers} --progress ./${local_folder_name} ${serv_name}:/${fold_name}/$(basename $(pwd)) && \
	mkdir -p ${ready_path}/${local_folder_name} && \
	mv ./${local_folder_name}/* ${ready_path}/${local_folder_name}
}

#echo "Sync cvl"
#serv_name="cvl-gdrive"
#local_folder_name="cvl_bak"
#transfers=4
#sync


#echo "Sync personal"
#serv_name="my-mail-free"
#local_folder_name="free-bak"
#transfers=12
#sync


#echo "Sync sk ..."
#serv_name="my-sk-mail-plo"
#local_folder_name="sk-bak"
#transfers=12
#sync



echo "Sync sk prod ..."
serv_name="sk-s3:nn-disk/ubuntu-data/backups"
local_folder_name="sk-prod-bak"
transfers=12
sync



#echo "Sync yandex ..."
#serv_name="YandexMoneyDirty"
#local_folder_name="yandex-bak"
#transfers=4
#sync

#echo "Sync private data ..."
#serv_name="yandex_brailovsky"
#local_folder_name="google-bak"
#transfers=12
#sync



