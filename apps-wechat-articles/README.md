# 微信公众号文章管理镜像

微信公众号文章，自动生成、发送的运行环境。

依赖包括：

- jinja2 文章模版渲染
- WeChat sdk，公众号授权、文章 CURD API
- 加密：公众号授权时依赖
- numpy 等数据分析库，取决于文章内容，一般包括数据分析
- 爬虫环境。数据等抓取

## 快速上手

#### 构建镜像

```bash
cd dockerfiles/apps-wechat-articles
make docker-build
```


## 补充说明

在 [jupyter-pandas-machine-learning](../jupyter-pandas-machine-learning/) 基础上，安装了爬虫、微信、加密等相关等相关库

已安装的库 list 见 [Dockerfile](./Dockerfile)
