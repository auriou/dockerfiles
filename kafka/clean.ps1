#docker-compose down
docker network prune -f
docker rm -f $(docker ps -a -q)
docker volume rm $(docker volume ls -q)
docker-compose up 