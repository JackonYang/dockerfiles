FROM jackon/ubuntu20.04-python3.8:latest

LABEL author="JackonYang <i@jackon.me>"

RUN pip install django==3.1.4
RUN pip install django-grappelli==2.14.3
RUN pip install djangorestframework==3.12.2
RUN pip install django-filter==2.4.0

RUN pip install uwsgi

COPY image_info.ini /image_info.ini
