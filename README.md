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
docker run my-python-app
```

Outputting the version of python being used


# Docker Container Management Commands

## Image Management

### Pull an Image from Docker Hub
```sh
docker pull <image-name>:<tag>
```
Example:
```sh
docker pull python:3.11-slim
```

### List Available Images
```sh
docker images
```

### Remove an Image
```sh
docker rmi <image-id>
```
Example:
```sh
docker rmi python:3.11-slim
```

### Build an Image from a Dockerfile
```sh
docker build -t <image-name>:<tag> .
```
Example:
```sh
docker build -t my-python-app .
```

### Remove Unused Images
```sh
docker image prune -a
```

---

## Container Management

### Run a New Container
```sh
docker run -d -p <host-port>:<container-port> -v <host-dir>:<container-dir> --name <container-name> -e <env-var>=<value> <image-name>
```
Example:
```sh
docker run -d -p 8080:80 -v /path/on/host:/app --name my-app -e ENV_VAR=value python:3.11-slim
```

### List Running Containers
```sh
docker ps
```

### Start a Stopped Container
```sh
docker start <container-name-or-id>
```

### Stop a Running Container
```sh
docker stop <container-name-or-id>
```

### Restart a Container
```sh
docker restart <container-name-or-id>
```

### Remove a Container
```sh
docker rm <container-name-or-id>
```

### Execute a Command in a Running Container
```sh
docker exec -it <container-name-or-id> <command>
```
Example:
```sh
docker exec -it my-app bash
```

### View Logs of a Container
```sh
docker logs <container-name-or-id>
```

---

## Network and Volume Management

### List Networks
```sh
docker network ls
```

### Create a New Network
```sh
docker network create <network-name>
```

### Remove a Network
```sh
docker network rm <network-name>
```

### List Volumes
```sh
docker volume ls
```

### Create a New Volume
```sh
docker volume create <volume-name>
```

### Remove a Volume
```sh
docker volume rm <volume-name>
```

### Remove Unused Volumes
```sh
docker volume prune
```

---

## Example Workflow

1. **Build an image**:
   ```sh
   docker build -t my-python-app .
   ```
2. **Run a container**:
   ```sh
   docker run -d -p 8080:80 --name my-app my-python-app
   ```
3. **View logs**:
   ```sh
   docker logs my-app
   ```
4. **Access the running container shell**:
   ```sh
   docker exec -it my-app bash
   ```
5. **Stop and remove the container**:
   ```sh
   docker stop my-app && docker rm my-app
   ```

---

## Additional Commands

### Prune Unused Containers
```sh
docker container prune
```

### View Detailed Container Info
```sh
docker inspect <container-name-or-id>
```

## References
- [Docker Docs](https://docs.docker.com/)
- [Docker Command Line Reference](https://docs.docker.com/engine/reference/commandline/docker/)

