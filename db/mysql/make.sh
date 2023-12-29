#!/bin/bash

# 关掉正在运行的容器，清理文件
docker compose down
sudo rm -rf */


# 启动容器
docker compose -f docker-compose.yml -p mysql up -d