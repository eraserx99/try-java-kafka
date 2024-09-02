kafka-console-producer \
--bootstrap-server broker:29092 \
--topic players \
--property 'parse.key=true' \
--property 'key.separator=|' < players.json

kafka-console-producer \
--bootstrap-server broker:29092 \
--topic products \
--property 'parse.key=true' \
--property 'key.separator=|' < products.json

kafka-console-producer \
--bootstrap-server broker:29092 \
--topic score-events < score-events.json
