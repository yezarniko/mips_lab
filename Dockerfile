# Use the official Ubuntu as the base image
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y qemu-user-static gcc-mips-linux-gnu

# Set the working directory
WORKDIR /app


# Start a shell when the container runs
CMD ["/bin/bash"]

