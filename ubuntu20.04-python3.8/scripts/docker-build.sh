branch_name=`git rev-parse --abbrev-ref HEAD`
image_version=`basename $branch_name`

MYSELF=`pwd`/$0
MYDIR="${MYSELF%/*}"

project_dir=`dirname ${MYDIR}`

image_basename=jackon/$(basename $project_dir)
image_name=${image_basename}:${image_version}
latest_tag=${image_basename}:latest

echo "image_name=${image_basename}" > image_info.ini
echo "image_version=${image_version}" >> image_info.ini

docker build -f ${project_dir}/Dockerfile -t ${image_name} ${project_dir}

docker tag ${image_name} ${latest_tag}
