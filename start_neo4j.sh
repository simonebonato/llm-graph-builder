docker stop neo4j
docker rm neo4j
docker run \
    --name neo4j \
    --publish=7474:7474 --publish=7687:7687 \
    --env NEO4J_AUTH=neo4j/password \
    --volume=./neo4j_data/data:/data \
    --volume=./neo4j_data/logs:/logs \
    --volume=./neo4j_data/plugins:/plugins \
    -e NEO4JLABS_PLUGINS='["apoc"]' \
    -e NEO4J_dbms_security_procedures_unrestricted=apoc.* \
    -e NEO4J_dbms_security_procedures_allowlist=apoc.* \
    neo4j:latest
