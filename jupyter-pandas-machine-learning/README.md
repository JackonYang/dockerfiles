# 数据分析/机器学习通用 docker

docker 领域的 anaconda


[https://hub.docker.com/r/jackon/jupyter-pandas-machine-learning](https://hub.docker.com/r/jackon/jupyter-pandas-machine-learning)


## 快速上手

#### 构建镜像

```bash
cd dockerfiles/jupyter-pandas-machine-learning
make docker-build
```

#### 启动镜像 - 姿势 1: 拉起 jupyter server

```bash
docker run -p 8899:8899 -t j-jupyter-pandas-machine-learning
```

浏览器访问：`IP:8899`

#### 启动镜像 - 姿势 2: 进入交互式 bash

```bash
docker run -it j-jupyter-pandas-machine-learning /bin/bash
```


## 注意事项

1. 代码 mount 进来。
2. juypter server 默认不需要密码，且以 root 运行。使用方便，但，暴露在公网有很大的安全风险。
