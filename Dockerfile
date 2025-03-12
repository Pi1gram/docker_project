# Use Python 3.11 slim as the base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application files into the container
COPY . .

# Define the default command
CMD ["python3", "app.py"]