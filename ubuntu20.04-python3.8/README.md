# python3 基础镜像

适合大陆网络环境的默认 mirror 配置

[https://hub.docker.com/r/jackon/ubuntu20.04-python3.8](https://hub.docker.com/r/jackon/ubuntu20.04-python3.8)

```bash
docker pull jackon/ubuntu20.04-python3.8
```


## 基本信息


| info | Description/version |
| --- | --- |
| size | 436MB |
| ubuntu | 20.04 |
| python3 | 3.8.2 |
| python2 | 2.7.18 |
| pip | 20.0.2 |
| apt-get 源 | 阿里镜像源 |
| pip 源 | 阿里镜像源 |


## 补充说明


ubuntu 20.04 自带 3.8.2

python 最新版本是 3.8.5，无重大更新。

为了最简化环境 setup，不升级 python3 到最新版。


```bash
root@da4767d3429e:/# python --version
Python 2.7.18rc1
root@da4767d3429e:/# python3 --version
Python 3.8.2
root@da4767d3429e:/# pip -V
pipip 20.0.2 from /usr/lib/python3/dist-packages/pip (python 3.8)
root@da4767d3429e:/# pip3 -V
pip 20.0.2 from /usr/lib/python3/dist-packages/pip (python 3.8)
```
