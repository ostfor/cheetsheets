#!/usr/bin/env bash

serv_name="dummy"
rclone sync ./ ${serv_name}:dev_data/$(basename $(pwd))
