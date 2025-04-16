# Use the official Dart image from Docker Hub
FROM dart:stable AS build

# Set the working directory
WORKDIR /app

# Copy the pubspec files and get dependencies
COPY pubspec.* ./
RUN dart pub get

# Copy the rest of the app
COPY . .

# Build the Dart project
RUN dart compile exe bin/server.dart -o bin/server

# Final stage to keep the image small
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/

# Expose the port your application will listen on
EXPOSE 8080

# Run the Dart server
CMD ["/app/bin/server"]