#!/bin/bash

#构建镜像
docker build -t tanjie/springbootwithskywalking:v1 .

#删除已存在容器
docker rm -f springbootwithskywalking &> /dev/null

#启动容器
docker run --name springbootwithskywalking \
		   -e SW_AGENT_NAMESPACE=test \
		   -e SW_AGENT_NAME=springbootwithskywalking \
		   -e SW_AGENT_COLLECTOR_BACKEND_SERVICES=139.199.77.75:11800 \
		   -e SW_AGENT_SAMPLE=-1 \
		   -d tanjie/springbootwithskywalking:v1

#查看容器日志
docker logs -f springbootwithskywalking