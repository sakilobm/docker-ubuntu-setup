# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    vim \
    git

# Copy your configuration scripts into the container
COPY ./scripts /usr/local/bin/scripts

# Make your scripts executable
RUN chmod +x /usr/local/bin/scripts/*.sh

# Run your setup script
CMD ["/usr/local/bin/scripts/setup.sh"]
