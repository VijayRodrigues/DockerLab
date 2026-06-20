# Networking

DockerLab uses a shared Docker bridge network.

Network Name

dockerlab_network

## Benefits

- Container-to-container communication
- DNS-based service discovery
- Independent Docker Compose projects
- Reusable across all services

## Examples

Airflow → PostgreSQL

Kafka UI → Kafka

Spark → MinIO

Future services will also connect to this network.