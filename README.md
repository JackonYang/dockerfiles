# dockerfiles

常用开发环境的 dockerfile & quick start

## Tips

- 配置 Docker 镜像站 [https://www.daocloud.io/mirror](https://www.daocloud.io/mirror)

## Tools

#### 安装 docker 运行环境 -- 非 GPU 版本

- [docker-install.sh](./tools/docker-install.sh)

#### 安装 docker 运行环境 -- GPU 版本

在非 GPU 版的基础上，安装 Nvidia-docker

- [nvdia-docker-install.sh](./tools/nvdia-docker-install.sh)

references:

- [https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker)


说明：

1. nvidia docker 要求 docker 19.03
2. 若要支持在 docker 内操作 GPU，启动 docker 需要 --gpus 参数。

常见报错原因：

```
could not select device driver "" with capabilities: [[gpu]]
```

需要安装 nvidia-container-toolkit 并重启 docker。[https://github.com/NVIDIA/nvidia-docker/issues/1243](https://github.com/NVIDIA/nvidia-docker/issues/1243)
