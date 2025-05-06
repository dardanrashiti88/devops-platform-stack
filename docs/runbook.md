# Runbook

## Common Issues:

1. **NGINX not starting**:
   - Check the NGINX logs: `docker logs nginx-container-id`
   - Ensure no other services are using port 80.

2. **Backend not responding**:
   - Check backend logs: `docker logs backend-container-id`
   - Ensure Python dependencies are correctly installed.

3. **Database not connecting**:
   - Verify that MySQL is running: `docker ps | grep mysql`
   - Ensure the connection settings in `.env` are correct.

## Restarting Services:

To restart the backend, use:
```bash
docker-compose restart backend
