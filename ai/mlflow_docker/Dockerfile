FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && \
    apt-get install -y gcc && \
    apt-get clean

RUN pip install --no-cache-dir \
    mlflow \
    psycopg2-binary \
    boto3

WORKDIR /mlflow

EXPOSE 5000

CMD ["mlflow","server"]