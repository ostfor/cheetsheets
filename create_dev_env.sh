#!/usr/bin/env bash

run_dir=$(pwd)
cd ~
mkdir -p .nn_log/log_example/
mkdir -p .data_dev/data_example/
mkdir -p .golden_repo
mkdir -p .papers
mkdir -p .virtualenvs


cp ${run_dir}/data/data_sync_template.sh .data_dev/data_example/.sync.sh
chmod u+x .data_dev/data_example/.sync.sh



