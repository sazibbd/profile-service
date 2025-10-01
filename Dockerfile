# Base image
FROM openjdk:11-jdk

# Maintainer info
LABEL maintainer="sazibdb@gmail.com"

# App directory
WORKDIR /app

# Copy jar file
COPY target/profile-service.jar app.jar

# Expose port
EXPOSE 8080

# Run app
ENTRYPOINT ["java","-jar","app.jar"]
