# 爬虫镜像

以较低的资源消耗，后台稳定跑爬虫。

数据分析等，在另外单独的环境/镜像里搞。

[https://hub.docker.com/r/jackon/apps-crawlers](https://hub.docker.com/r/jackon/apps-crawlers)


```bash
docker pull jackon/apps-crawlers
```

## 补充说明

在 [ubuntu20.04-python3.8](../ubuntu20.04-python3.8/) 基础上，安装了爬虫相关库

已安装的库 list 见 [Dockerfile](./Dockerfile)
