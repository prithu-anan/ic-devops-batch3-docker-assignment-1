# Docker Commands Used During Development

### 1. **Docker Build**
   ```bash
   docker build -t <image-name>:<tag> .
   ```
   **Purpose:** Builds a Docker image from a specified Dockerfile.
   **Flag Explanation:**
   - `-t`: Tags the image with a name and optionally a version (e.g., `my-app:v1.0.0`).
   - `.`: Specifies the build context, usually the current directory.

### 2. **Docker Run**
   ```bash
   docker run -d --name <container-name> -p <host-port>:<container-port> <image-name>:<tag>
   ```
   **Purpose:** Runs a container from the specified image in detached mode with port mapping.
   **Flag Explanation:**
   - `-d`: Runs the container in detached mode (in the background).
   - `--name`: Assigns a name to the running container.
   - `-p`: Maps a port on the host to a port in the container (e.g., `8080:80`).

### 3. **Docker Push**
   ```bash
   docker push <docker-hub-username>/<image-name>:<tag>
   ```
   **Purpose:** Pushes the Docker image to Docker Hub for sharing or deployment.

### 4. **Docker Pull**
   ```bash
   docker pull <docker-hub-username>/<image-name>:<tag>
   ```
   **Purpose:** Pulls a Docker image from Docker Hub.

### 5. **Docker Tag**
   ```bash
   docker tag <image-id> <docker-hub-username>/<image-name>:<tag>
   ```
   **Purpose:** Tags an existing image with a new name or version.

### 6. **Docker Exec**
   ```bash
   docker exec -it <container-name> /bin/bash
   ```
   **Purpose:** Accesses the shell of a running container for debugging or inspection.
   **Flag Explanation:**
   - `-i`: Keeps STDIN open even if not attached.
   - `-t`: Allocates a pseudo-TTY for interaction.

### 7. **Docker Logs**
   ```bash
   docker logs <container-name>
   ```
   **Purpose:** Views logs of a running container.

### 8. **Docker Stop**
   ```bash
   docker stop <container-name>
   ```
   **Purpose:** Stops a running container.

### 9. **Docker Remove**
   ```bash
   docker rm <container-name>
   ```
   **Purpose:** Removes a stopped container.

### 10. **Docker Remove Image**
   ```bash
   docker rmi <image-id>
   ```
   **Purpose:** Removes an unused Docker image.

### 11. **Docker Compose Up**
   ```bash
   docker-compose up -d
   ```
   **Purpose:** Starts all services defined in a `docker-compose.yml` file in detached mode.
   **Flag Explanation:**
   - `-d`: Runs services in detached mode.

### 12. **Docker Compose Down**
   ```bash
   docker-compose down
   ```
   **Purpose:** Stops and removes all containers, networks, and volumes defined by Docker Compose.
   