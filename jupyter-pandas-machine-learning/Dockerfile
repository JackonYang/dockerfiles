FROM j-ubuntu20.04-python3

MAINTAINER JackonYang <i@jackon.me>

RUN pip install \
    ipython \
    jupyter \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    matplotlib \
    Pillow \
    seaborn

WORKDIR /code

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8899", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
