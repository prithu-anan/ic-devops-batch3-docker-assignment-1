FROM python:3.9 AS builder
WORKDIR /app

RUN python -m venv /opt/venv

RUN /opt/venv/bin/pip install --no-cache-dir flask

COPY backend ./


FROM python:3.9-slim
WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
COPY --from=builder /app /app

ENV PATH="/opt/venv/bin:$PATH"

EXPOSE 5000
CMD ["python", "app.py"]
