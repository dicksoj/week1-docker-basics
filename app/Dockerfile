FROM python:3.11-slim

WORKDIR /app

COPY app.py .
RUN pip install fastapi uvicorn

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY healthcheck.sh /healthcheck.sh
RUN chmod +x /healthcheck.sh

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

