Mongodb
=======

Docker image with mongodb service.

docker run -p 27017:27017 -p 28017:28017 -p 101:22 -d mongo:lastest 
docker logs xxx

======
docker run -d -p 27017:27017 -p 28017:28017 -e MONGODB_PASS="pass" mongodb
docker run -d -p 27017:27017 -p 28017:28017 -e AUTH=no mongodb

======
-v 映射到本地


