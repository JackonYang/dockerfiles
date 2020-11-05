# 炒股镜像

[https://hub.docker.com/r/jackon/apps-pstocky](https://hub.docker.com/r/jackon/apps-pstocky)

假装能自动赚钱

## 快速上手

#### 构建镜像

```bash
cd dockerfiles/apps-pstocky
make docker-build
```


## 补充说明

在 [jupyter-pandas-machine-learning](../jupyter-pandas-machine-learning/) 基础上，安装了股票分析的依赖库。

已安装的股票库 list 见 [Dockerfile](./Dockerfile)

镜像的使用方法，见 [jupyter-pandas-machine-learning](../jupyter-pandas-machine-learning/)
