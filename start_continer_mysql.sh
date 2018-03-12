#My string to run a container mysql
docker run \
--detach \
--name=test-mysql \
--env="MYSQL_ROOT_PASSWORD=mypassword" \
--publish 6603:3306 \
--volume=/root/docker/test-mysql/conf.d:/etc/mysql/conf.d \
--volume=/storage/docker/mysql-datadir:/var/lib/mysql \
mysql

#After reboot system container will not start automaticly
#To start container
Docker start test-mysql
