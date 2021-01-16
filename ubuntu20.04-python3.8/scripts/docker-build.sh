# branch_name=`git rev-parse --abbrev-ref HEAD`
. image_info.ini

MYSELF=`pwd`/$0
MYDIR="${MYSELF%/*}"

project_dir=`dirname ${MYDIR}`

latest_tag=${image_name}:latest


docker build -f ${project_dir}/Dockerfile -t ${image_name}:${image_version} ${project_dir}

docker tag ${image_name}:${image_version} ${latest_tag}
