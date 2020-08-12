image_version=0.1

MYSELF="$(readlink -f "$0")"
MYDIR="${MYSELF%/*}"

project_dir="$(readlink -f ${MYDIR}/../)"

image_basename=j-$(basename $project_dir)
image_name=${image_basename}:${image_version}
latest_tag=${image_basename}:latest

echo "image_name=${image_basename}" > image_info.ini
echo "image_version=${image_version}" >> image_info.ini

docker build -f ${project_dir}/Dockerfile -t ${image_name} ${project_dir}

docker tag ${image_name} ${latest_tag}
