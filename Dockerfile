FROM python:3.12-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY hello.py .

CMD ["python", "hello.py"]