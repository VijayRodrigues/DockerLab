# DockerLab

A local Docker-based platform for learning, developing, and testing modern Data Engineering, Cloud, Analytics, and AI technologies.

## Objectives

- Learn Docker and Docker Compose
- Build a reusable local data platform
- Develop end-to-end data engineering projects
- Experiment with cloud-native technologies
- Practice orchestration, messaging, storage, monitoring, and AI workloads
- Maintain a reproducible development environment

---

## Current Project Structure

```text
DockerLab/
│
├── databases/
├── messaging/
├── orchestration/
├── storage/
├── docs/
├── .gitignore
└── README.md
```

---

## Installed Services

### Databases

- PostgreSQL
- Redis

### Messaging

- Apache Kafka (KRaft)
- Apache Kafka (ZooKeeper)
- Kafka UI

### Orchestration

- Apache Airflow

### Storage

- MinIO
- Azurite
- LocalStack

---

## Planned Services

- Prometheus
- Grafana
- Trino
- DuckDB
- Apache Spark
- MLflow
- Ollama
- Open WebUI
- Qdrant
- ChromaDB
- Apache Superset

---

## Repository Structure

Each service contains:

- compose.yaml
- .env
- README.md

All services are connected through a shared Docker network.

---

## Status

Current Phase:

✅ Infrastructure
✅ Databases
✅ Messaging
✅ Orchestration
✅ Storage

Next:

⏳ Observability