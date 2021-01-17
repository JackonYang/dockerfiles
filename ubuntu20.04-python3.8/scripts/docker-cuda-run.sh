. image_info.ini

workspace=/home/`whoami`

# docker pull ${image}
docker run --rm \
    -v ${workspace}:${workspace} \
    -v ${workspace}:/code/myhome \
    --gpus all \
    -it ${image_name}:${image_version} /bin/bash
