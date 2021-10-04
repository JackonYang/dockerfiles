# Tensorflow 2.1 GPU

[https://hub.docker.com/r/jackon/tensorflow-2.1-gpu](https://hub.docker.com/r/jackon/tensorflow-2.1-gpu)

```bash
docker pull jackon/tensorflow-2.1-gpu
```


## 快速上手

#### 启动镜像 - 姿势 1: 拉起 jupyter server

```bash
docker run -p 8899:8899 -v $(realpath .):/tf/notebooks -t jackon/tensorflow-2.1-gpu
```

浏览器访问：`IP:8899`

#### 启动镜像 - 姿势 2: 进入交互式 bash

```bash
docker run -it jackon/tensorflow-2.1-gpu /bin/bash
```


## 注意事项

1. 代码 mount 进来。
2. juypter server 默认不需要密码，且以 root 运行。使用方便，但，暴露在公网有很大的安全风险。
