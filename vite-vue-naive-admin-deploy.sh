echo -e "---------docker Login--------"
docker login --username=$1 registry.cn-hangzhou.aliyuncs.com --password=$2
echo -e "---------docker Stop--------"
docker stop bilibili-vue
echo -e "---------docker Rm--------"
docker rm bilibili-vue
docker rmi registry.cn-hangzhou.aliyuncs.com/zlyyyy/bilibili-vue:latest
echo -e "---------docker Pull--------"
docker pull registry.cn-hangzhou.aliyuncs.com/zlyyyy/bilibili-vue:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8081:80 --name bilibili-vue registry.cn-hangzhou.aliyuncs.com/zlyyyy/bilibili-vue:latest
echo -e "---------deploy Success--------"