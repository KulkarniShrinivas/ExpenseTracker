# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files
COPY . /app

# Install dependencies and build the project
RUN ./mvnw package -DskipTests

# Expose port (optional, if you use web-based UI in the future)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "target/ExpenseTracker-1.0.jar"]
