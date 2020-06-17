#!bash
docker-compose exec -u root distributor /opt/mssql/bin/mssql-conf set sqlagent.enabled true
docker-compose exec -u root publisher  /opt/mssql/bin/mssql-conf set sqlagent.enabled true 
docker-compose exec -u root subscriber  /opt/mssql/bin/mssql-conf set sqlagent.enabled true 
docker-compose restart distributor publisher subscriber