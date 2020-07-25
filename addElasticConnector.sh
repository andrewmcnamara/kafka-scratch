 curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '
{
"name": "elastic-sink",
"config": {
"connector.class":
"io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
"tasks.max": "1",
"topics": "dbserver1.inventory.customers",
"connection.url": "http://elasticdbz:9200",
"transforms": "unwrap,key",
 "transforms.unwrap.type": "io.debezium.transforms.ExtractNewRecordState",
"transforms.key.type": "org.apache.kafka.connect.transforms.ExtractField$Key",
"transforms.key.field": "id",
"key.ignore": "false",
"type.name": "customer"
}
}'
