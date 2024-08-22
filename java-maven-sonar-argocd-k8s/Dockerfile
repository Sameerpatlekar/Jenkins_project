# Use a minimal Alpine image with OpenJDK 11
FROM openjdk:11-jdk-slim

# Set environment variables
ENV JAVA_VERSION=jdk-11.0.11+9 \
    JAVA_HOME=/opt/java/openjdk \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG=/root/.m2 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Install Maven and necessary packages
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Set the JAVA_HOME to the correct path
RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && \
    echo "JAVA_HOME set to $JAVA_HOME"

# Copy the Maven entrypoint script
COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/mvn-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]

# Default command to run Maven
CMD ["mvn"]
