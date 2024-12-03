# Use a Maven image to build the application
FROM maven:3.8.5-eclipse-temurin-17 AS builder

# Set working directory inside the container
WORKDIR /app

# Copy the project files
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Use an OpenJDK image to run the application
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from the builder stage (correct the file name here)
COPY --from=builder /app/target/SCM-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 for the Spring Boot app
EXPOSE 8080

# Set environment variables for MySQL database (optional override during container run)
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysqlContainer:3306/scm
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=Shubh@29

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
