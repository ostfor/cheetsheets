# Or actual rclone drive name
RCLONE_DRIVE=my-gdrive

mkdir ${HOME}/${RCLONE_DRIVE}
mv data/rclone@.service ${HOME}/.config/systemd/user/rclone@.service
systemctl --user daemon-reload
systemctl --user enable rclone@my-gdrive.service
