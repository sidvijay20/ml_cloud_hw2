#!/bin/bash

DEPENDENCIES=("htop" "glances" "sysstat")

for dependency in "${DEPENDENCIES[@]}"; do
    if ! type "$dependency" > /dev/null; then
        sudo apt-get update && sudo apt-get install -y "$dependency"
    else
    fi
done

if command -v nvidia-smi >/dev/null; then
    GPU_SUPPORT_ENABLED=true
else
    GPU_SUPPORT_ENABLED=false
fi

RUN_MODEL_SCRIPT="python /home/examples/imagenet/main.py -a resnet18 --dummy --epochs 1"

METRICS_FOLDER="system_metrics"
[ ! -d "$METRICS_FOLDER" ] && mkdir "$METRICS_FOLDER"

sudo htop -d 10 > "$METRICS_FOLDER/htop.log" 2> "$METRICS_FOLDER/htop_error.log" &
sudo glances --time 10 > "$METRICS_FOLDER/glances.log" 2> "$METRICS_FOLDER/glances_error.log" &

EXECUTION_START=$(date +%s)

nsys profile --stats=true --force-overwrite=true --output="$METRICS_FOLDER/nsys_profile" $RUN_MODEL_SCRIPT &
profile_pid=$!

if $GPU_SUPPORT_ENABLED; then
    nvidia-smi -l 1 --query-gpu=timestamp,name,utilization.gpu,utilization.memory,memory.total,memory.free,memory.used --format=csv > "$METRICS_FOLDER/gpu_usage.csv" &
    gpu_monitor_pid=$!
fi

wait $profile_pid

[ -n "$gpu_monitor_pid" ] && kill $gpu_monitor_pid

EXECUTION_END=$(date +%s)
EXECUTION_DURATION=$((EXECUTION_END - EXECUTION_START))

sudo pkill htop
sudo pkill glances
