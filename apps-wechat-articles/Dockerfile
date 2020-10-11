FROM j-jupyter-pandas-machine-learning

MAINTAINER JackonYang <i@jackon.me>

# crawler libs
RUN pip install requests

# article template rendering
RUN pip install jinja2

# wechat sdk
RUN pip install wechatpy
RUN pip install cryptography

# others

# https://github.com/conda-forge/pygridgen-feedstock/issues/10
# https://askubuntu.com/questions/1060903/importerror-libgthread-2-0-so-0-cannot-open-shared-object-file-no-such-file-o
RUN apt-get install  --no-install-recommends -y libgl1-mesa-glx libglib2.0-0
RUN pip install opencv-python
