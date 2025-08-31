# 📘 Week 1 — Docker Basics with Healthcheck  

## 🚀 Project Overview
This is a simple **FastAPI app** running inside a Docker container, fronted by a **healthcheck** script.  
It demonstrates how to:
- Containerize a Python application with Docker  
- Use **docker-compose** for service management  
- Implement a container **healthcheck** for production-readiness  

---

## 📂 Project Structure
```
week1-docker-basics/
│── docker-compose.yml
│── app/
│   ├── Dockerfile
│   ├── app.py
│   └── healthcheck.sh
```

---

## 🛠️ Setup Instructions

### 1. Clone Repository
```bash
git clone https://github.com/<your-username>/week1-docker-basics.git
cd week1-docker-basics
```

### 2. Build and Run
```bash
docker compose up --build
```

### 3. Access the API
- API Root: [http://localhost:8000](http://localhost:8000)  
  → Returns:  
  ```json
  { "message": "Hello from Week 1 project!" }
  ```

- Interactive Swagger Docs: [http://localhost:8000/docs](http://localhost:8000/docs)  

---

## 🧪 Healthcheck

This project includes a `healthcheck.sh` script that verifies the service is responding.  

### Inside `docker-compose.yml`:
```yaml
healthcheck:
  test: ["CMD", "/healthcheck.sh"]
  interval: 10s
  timeout: 5s
  retries: 3
```

### To View Container Status:
```bash
docker ps
```
Example output:
```
CONTAINER ID   IMAGE             STATUS                     PORTS
123abc456def   week1_web         Up 20s (healthy)           0.0.0.0:8000->8000/tcp
```

✅ The `(healthy)` flag shows the app is live and passing its healthcheck.

---
