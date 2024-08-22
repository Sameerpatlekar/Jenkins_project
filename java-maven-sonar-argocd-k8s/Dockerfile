# Use a minimal Debian-based image with OpenJDK 11
FROM openjdk:11-jdk-slim

# Set environment variables
ENV JAVA_HOME=/usr/local/openjdk-11 \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG=/root/.m2 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Install Git, Maven, and Docker
RUN apt-get update && \
    apt-get install -y git maven docker.io && \
    rm -rf /var/lib/apt/lists/*

# Copy the Maven entrypoint script
COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/mvn-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]

# Default command to run Maven
CMD ["mvn"]