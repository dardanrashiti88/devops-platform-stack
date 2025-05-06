# Project Architecture

The `devops-platform-stack` project consists of several key components:

## Components:
1. **Frontend (React/HTML/CSS)**: 
   - Serves the web pages for users.
   - Deployed via NGINX as static files.

2. **Backend (Python Flask)**:
   - Handles business logic and API requests.
   - Deployed on a server with Python dependencies.

3. **Database (MySQL)**:
   - Stores user data and app-related information.
   - Containerized using Docker.

4. **NGINX**:
   - Reverse proxy for both frontend and backend services.

5. **Monitoring (Prometheus)**:
   - Monitors the health of the services in the project.

## Architecture Diagram:
![Architecture Diagram](images/architecture.png)

