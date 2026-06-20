# DockerLab Architecture

```text
Docker Desktop
        │
        │
dockerlab_network
        │
 ┌──────────────┬───────────────┬───────────────┬──────────────┐
 │              │               │               │
Databases    Messaging     Orchestration    Storage
 │              │               │               │
PostgreSQL    Kafka        Apache Airflow    MinIO
Redis         ZooKeeper                      Azurite
Kafka UI                       LocalStack
```

## Design Principles

- One service per folder
- Independent Docker Compose projects
- Shared Docker network
- Persistent Docker volumes
- Separate configuration using .env
- Reproducible local environment