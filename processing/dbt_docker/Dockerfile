FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && \
    apt-get install -y git gcc && \
    apt-get clean

RUN pip install --no-cache-dir \
    dbt-core \
    dbt-postgres \
    dbt-trino \
    dbt-databricks

WORKDIR /usr/app

CMD ["tail", "-f", "/dev/null"]