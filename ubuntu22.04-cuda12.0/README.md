# python3 基础镜像

适合大陆网络环境的默认 mirror 配置

[https://hub.docker.com/r/jackon/ubuntu18.04-cuda10.2](https://hub.docker.com/r/jackon/ubuntu18.04-cuda10.2)

```bash
docker pull jackon/ubuntu18.04-cuda10.2
```


## 基本信息


| info | Description/version |
| --- | --- |
| size | 1.8GB |
| ubuntu | 18.04 |
| python3 | 3.6.9 |
| python2 | 2.7.17 |
| pip | 20.3.3 |
| apt-get 源 | 阿里镜像源 |
| pip 源 | 阿里镜像源 |


## GPU 环境检查

在 docker 内，执行 nvidia-smi 能看到 GPU 卡即可。

```bash
$ make docker-cuda-run
bash scripts/docker-cuda-run.sh
root@b9baec021541:/code# nvidia-smi
Sun Jan 17 02:56:46 2021
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 440.100      Driver Version: 440.100      CUDA Version: 10.2     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 1080    Off  | 00000000:01:00.0 Off |                  N/A |
|  0%   26C    P8     6W / 200W |     17MiB /  8118MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
+-----------------------------------------------------------------------------+
```