# Use a Dart base image
FROM google/dart:latest

# Set the working directory in the container
WORKDIR /app

# Copy the pubspec.yaml file and install dependencies
COPY pubspec.* ./
RUN dart pub get

# Copy the entire application code into the container
COPY . .

# Build the Dart application
RUN dart compile exe lib/main.dart -o main

# Specify the command to run your application
CMD ["./main"]
