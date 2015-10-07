# docker-wso2-pgsql
PostgreSQL database for WSO2 products

This container downloads the WSO2 Identity Server 5.0.0 pre-packaged with API Manager (1.9.1) key manager, and runs the sql scripts to create the database.

Built from the official PostgreSQL docker images. This means you can set the db name, username, and password with the following environment variables:

* `$POSTGRES_DB` - This is the name of the database to create
* `$POSTGRES_USER` - This the user to create for the database
* `$POSTGRES_PASSWORD` - This is the password for the user
