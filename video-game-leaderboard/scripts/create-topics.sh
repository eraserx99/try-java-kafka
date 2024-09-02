# create the game events topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic score-events \
  --replication-factor 1 \
  --partitions 4 \
  --create

# create the players topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic players \
  --replication-factor 1 \
  --partitions 4 \
  --create

# create the products topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic products \
  --replication-factor 1 \
  --partitions 4 \
  --create

# create the high-scores topic
kafka-topics \
  --bootstrap-server broker:29092 \
  --topic high-scores \
  --replication-factor 1 \
  --partitions 4 \
  --create
