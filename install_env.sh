#!/bin/bash
# UnitClaw 一键环境自动化部署脚本 (Ubuntu 22.04 / 24.04)
set -e

echo "=== UnitClaw 环境部署开始 ==="

# 系统依赖
sudo apt update && sudo apt install -y \
    python3 python3-pip python3-venv \
    git curl wget cmake build-essential \
    libgl1-mesa-glx libglib2.0-0

# Python 依赖
if [ -f "requirements.txt" ]; then
    echo ">>> 安装 Python 依赖..."
    pip3 install -r requirements.txt
fi

echo "=== 环境部署完成 ==="
