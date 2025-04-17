# Dockerfile
FROM mysql:8

# Copie du script d'initialisation
COPY init.sql /docker-entrypoint-initdb.d/

# Port d’écoute MySQL
EXPOSE 3306