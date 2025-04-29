# Use the official Maven image to build the application
FROM maven:3.8.6-openjdk-17 AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml file
COPY pom.xml .

# Copy the source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Use the official OpenJDK image to run the application
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /app/target/parking-control-0.0.1-SNAPSHOT.jar /app/parking-control.jar

# Expose the port
EXPOSE 8080

# Run the command to start the application
CMD ["java", "-jar", "parking-control.jar"]
