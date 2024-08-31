kafka-topics \
  --bootstrap-server broker:29092 \
  --topic users \
  --replication-factor 1 \
  --partitions 4 \
  --create
