# kafka-scratch

This repository is just for testing kafka

- Code begged borrowed to test kafka elasticsearch sink with kafka

- https://towardsdatascience.com/stream-your-data-changes-in-mysql-into-elasticsearch-using-debizium-kafka-and-confluent-jdbc-b93821d4997b

## Running

1. Start it up

```bash
cd kafka-sinker
DEBEZIUM_VERSION=1.0 docker-compose up
```

2. Add the connectors

- `sh ./addMysqlConnector.sh`
- `sh ./addElasticConnector.sh`

3. Check the topics

- kafkacat -b 127.0.0.1:9094 -t dbserver1.inventory.orders
- kafkacat -b 127.0.0.1:9094 -t dbserver1.inventory.customers

4. Check the elastic

- `curl 'http://localhost:9292/dbserver1.inventory.customers/_search?pretty'`

5. Check the db

- `docker exec -it mysqldbz /bin/bash`
