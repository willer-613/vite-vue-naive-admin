echo -e "---------docker Login--------"
# docker login --username=$1 registry.cn-shanghai.aliyuncs.com --password=$2 --password-stdin
echo -e "---------set variable--------"
# export LIUNX_PASSWORD = $2
echo $2 | docker login --username $1 registry.cn-shanghai.aliyuncs.com --password-stdin
echo -e "---------docker Stop--------"
docker stop vite-vue-naive-admin
echo -e "---------docker Rm--------"
docker rm vite-vue-naive-admin
docker rmi registry.cn-shanghai.aliyuncs.com/willer-docker/vite-vue-naive-admin:latest
echo -e "---------docker Pull--------"
docker pull registry.cn-shanghai.aliyuncs.com/willer-docker/vite-vue-naive-admin:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8081:80 --name vite-vue-naive-admin registry.cn-shanghai.aliyuncs.com/willer-docker/vite-vue-naive-admin:latest
echo -e "---------deploy Success--------"