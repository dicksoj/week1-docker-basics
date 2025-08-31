FROM python:3.11-slim

WORKDIR /app

COPY app.py .
RUN pip install fastapi uvicorn

COPY healthcheck.sh /healthcheck.sh
RUN chmod +x /healthcheck.sh

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

