# My Python App

## Docker Setup

### Build the Docker Image

To build the Docker image, run the following command in the directory containing the Dockerfile:

```sh
docker build -t my-python-app 
```

### Run the Docker Container

To run the Docker container, use the following command:

```sh
docker run -d -p 5000:5000 my-python-app
```

This will start the container and map port 5000 of the container to port 5000 on your host machine.

Example Usage
You can now access your application by navigating to <http://localhost:5000> in your web browser
