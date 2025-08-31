version: "3.9"

services:
  web:
    build: ./app
    ports:
      - "8000:8000"
    healthcheck:
      test: ["CMD", "/healthcheck.sh"]
      interval: 10s
      timeout: 5s
      retries: 3

