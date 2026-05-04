#!/bin/bash
# 既存のccrプロセスを停止
echo "Stopping existing ccr processes..."
pkill -f "ccr start" || true

# 完全に終了するまでわずかに待機
sleep 1

echo "Starting ccr..."
export $(cat ~/.claude-code-router/.env | xargs) 2>/dev/null
ccr start & sleep 3 && ccr code