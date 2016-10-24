# Docker for Kafka
Docker file for [Apache Kafka 0.10.0.1](http://kafka.apache.org/)

### Usage
 Build Docker image : 
 
 -  `docker build -t docker-kafka . `
 
 Run Docker from image :
 
 -  `docker run -itd -p 2181:2181 -p 9092:9092 docker-kafka`
 
 ##### **To remotely access kafka by producer and cosumers**
You need to specify `ADVERTISED_LISTENERS=PLAINTEXT:\\/\\/<your-server-host-name-or-ip>:<kafka-port>`
 
-   `docker run -itd -p 2181:2181 -p 9092:9092 -e ADVERTISED_LISTENERS=PLAINTEXT:\\/\\/192.168.1.128:9092 docker-kafka`

### TODO
- Add volume to store zookeeper data
- Allow to add config from outside
