# create the tweets topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic tweets \
  --replication-factor 1 \
  --partitions 4 \
  --create

# create the crypto-sentiment topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic crypto-sentiment \
  --replication-factor 1 \
  --partitions 4 \
  --create

kafka-console-producer \
  --bootstrap-server broker:29092 \
  --topic tweets < test.json

kafka-console-consumer \
  --bootstrap-server broker:29092 \
  --topic tweets \
  --from-beginning

kafka-console-consumer \
  --bootstrap-server broker:29092 \
  --topic crypto-sentiment \
  --from-beginning

kafka-avro-console-consumer \
  --bootstrap-server broker:29092 \
  --topic crypto-sentiment \
  --from-beginning
