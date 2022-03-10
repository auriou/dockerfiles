exemple 
https://medium.com/event-driven-utopia/configuring-debezium-to-capture-postgresql-changes-with-docker-compose-224742ca5372



docker volume
https://adamtheautomator.com/docker-volume-create/


docker volume create --driver local --opt type=cifs --opt device=//my.ip/sharedata --opt o=username=xxxxx,password=xxxxx,domain=xxx myvolume

test
docker run -it --rm -v myvolume:/tmp/myvolume -d --name samba-test alpine ash


lorsque l on créé un volume 
docker volume create kafka-data
les data sont dans :

\\wsl$\docker-desktop-data\version-pack-data\community\docker\volumes


https://blog.cellenza.com/data/exploiter-le-change-data-capture-cdc-avec-kafka-et-azure-databricks-1-2/

https://medium.com/@ankulwarganesh10/streaming-sql-server-cdc-with-apache-kafka-using-debezium-82d89aafb885

youtube.com/watch?v=KWAELycyxTc

connection  SQL server connection

host.docker.internal,10636

la gateway docker gateway.docker.internal


USE Sample 
GO 
--EXEC sys.sp_cdc_enable_db 

--GO 
EXEC sys.sp_cdc_enable_table 
@source_schema = 'dbo', 
@source_name = 'Users', 
@role_name = 'cdc_Admin', 
@supports_net_changes = 1 
GO

EXEC sys.sp_cdc_help_change_data_capture 



