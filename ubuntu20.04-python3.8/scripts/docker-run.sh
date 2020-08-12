. image_info.ini

workspace=/home/`whoami`

# docker pull ${image}
docker run \
    -v ${workspace}:${workspace} \
    -v ${workspace}:/code/myhome \
    -it ${image_name}:${image_version} /bin/bash
