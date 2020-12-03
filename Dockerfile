#renamed dockerfile to Dockerfile
# Derived from official mysql image (our base image)

FROM mysql
# Add a database and root password
ENV MYSQL_DATABASE=clients MYSQL_ROOT_PASSWORD=root

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup

COPY initialise_db_tb.sql /docker-entrypoint-initdb.d/
