FROM tensorflow/tensorflow:2.1.2-gpu-jupyter

LABEL author="JackonYang <i@jackon.me>"

RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

COPY dotfiles/sources.list.18.04.aliyun /etc/apt/sources.list

RUN apt-get update | true

RUN apt-get install -y libnuma1

# python
RUN apt-get install -y python python3 python3-pip python3-dev && \
    ln -s `which pip3` /usr/bin/pip

# for opencv-python
# https://github.com/conda-forge/pygridgen-feedstock/issues/10
# https://askubuntu.com/questions/1060903/importerror-libgthread-2-0-so-0-cannot-open-shared-object-file-no-such-file-o
RUN apt-get install  --no-install-recommends -y libgl1-mesa-glx libglib2.0-0

COPY dotfiles/pip.conf.aliyun /root/.pip/pip.conf

RUN pip install -U pip

# http://stackoverflow.com/questions/23524976/capturing-output-of-python-script-run-inside-a-docker-container
ENV PYTHONUNBUFFERED=0

RUN pip install \
    ipython \
    jupyter \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    matplotlib \
    Pillow \
    opencv-python \
    nltk \
    seaborn

COPY image_info.ini /image_info.ini
WORKDIR /tf

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8899", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
