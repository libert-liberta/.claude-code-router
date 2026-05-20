#!/bin/bash
# 既存のccrプロセスを停止
echo "Stopping existing ccr processes..."
pkill -f "ccr start" || true

# 完全に終了するまでわずかに待機
sleep 1

echo "Starting ccr..."
source ~/.claude-code-router/./setAllexport.sh ~/.claude-code-router/.env
ccr start & sleep 3 && ccr code