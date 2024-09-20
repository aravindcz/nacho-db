Run the database on local

1.  Install docker
2.  Create docker network if not exists with name develop-network (sudo docker network create develop-network)
3.  Create docker volume if not exists with name develop-volume (sudo docker volume create develop-volume)
4.  Build docker image (sudo docker build -t develop-db .)
5.  Run docker container from image (sudo docker run -d --name develop-db --network develop-network --volume develop-volume -p 3306:3306 develop-db)
6.  The database will be available on port 3306 for localhost or VM IP whichever you have installed docker on
