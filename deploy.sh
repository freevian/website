#!/bin/bash
set -e # 遇到错误立即退出

# 设置变量
APP_NAME="freevian-website"
CONTAINER_PORT=80
HOST_PORT=433

echo ">>> 开始部署 $APP_NAME..."

# 1. 拉取最新代码
echo ">>> 正在拉取远程最新代码..."
git pull origin main

# 2. 构建 Docker 镜像
echo ">>> 正在构建 Docker 镜像..."
if ! docker build -t $APP_NAME . ; then
  echo ">>> [错误] Docker 镜像构建失败，停止部署！"
  exit 1
fi

# 3. 停止并删除旧容器
echo ">>> 正在清理旧容器..."
docker stop $APP_NAME 2>/dev/null || true
docker rm $APP_NAME 2>/dev/null || true

# 4. 运行新容器
echo ">>> 正在运行新容器..."
docker run -d \
  --name $APP_NAME \
  --restart always \
  -p $HOST_PORT:$CONTAINER_PORT \
  $APP_NAME

# 5. 清理虚悬镜像
echo ">>> 正在清理过期镜像..."
docker image prune -f

echo ">>> 部署完成！"
docker ps | grep $APP_NAME
