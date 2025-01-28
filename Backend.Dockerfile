FROM python:3.9 AS builder

WORKDIR /app

RUN pip install --no-cache-dir flask

COPY backend ./



FROM python:3.9-slim

WORKDIR /app

COPY --from=builder /app .

EXPOSE 5000

CMD ["python", "app.py"]
