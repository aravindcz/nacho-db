# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=nacho
ENV MYSQL_USER=dev
ENV MYSQL_PASSWORD=developer

# Copy the SQL script to the Docker image
COPY init.sql /docker-entrypoint-initdb.d/

# Expose port 3306 for MySQL
EXPOSE 3306

