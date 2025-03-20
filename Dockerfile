# Use Python 3.11 slim as the base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Install any OS-level dependencies
RUN apt-get update && apt-get install -y --no-install-recommends gcc

# Copy the requirements file into the container
COPY requirements.txt /app

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app

# Expose the port the Flask app will run on (default is 5000)
EXPOSE 5000

# Define the default command to run the Flask application
CMD ["python"]