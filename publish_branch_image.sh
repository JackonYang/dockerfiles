branch_name=`git rev-parse --abbrev-ref HEAD`
image_dir=$(basename `dirname $branch_name`)

echo building image: $image_dir

cd $image_dir
make docker-build
make docker-push
