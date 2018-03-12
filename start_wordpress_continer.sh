#To setup "test-wordpress" whith link to "test-mysql" container 
docker run --detach --name test-wordpress --link test-mysql:mysql wordpress

#start "test-wordpress" container
docker start test-wordpress

#Get IP 
docker inspect test-wordpress |grep IP

