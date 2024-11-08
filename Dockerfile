# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java program or JAR file into the container
COPY . /app

# Compile the Java program (optional if using a pre-compiled JAR)
RUN javac Max.java

# Command to run the Java program when the container starts
CMD ["java", "Max"]
