FROM jackon/ubuntu20.04-python3.8:latest

MAINTAINER JackonYang <i@jackon.me>

# for opencv-python
# https://github.com/conda-forge/pygridgen-feedstock/issues/10
# https://askubuntu.com/questions/1060903/importerror-libgthread-2-0-so-0-cannot-open-shared-object-file-no-such-file-o
RUN apt-get install  --no-install-recommends -y libgl1-mesa-glx libglib2.0-0

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
WORKDIR /code

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8899", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
