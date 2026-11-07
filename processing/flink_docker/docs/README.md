# Shared Apache Flink Infrastructure

## Purpose

Centralized Apache Flink infrastructure managed independently
from individual data engineering projects.

Projects submit their PyFlink jobs to this shared cluster.
They do not maintain separate Flink installations.

## Environment

- Apache Flink: 2.2.1
- PyFlink: 2.2.1
- Python runtime: 3.12.3
- Java: 17
- Kafka connector: 5.0.0-2.2
- Deployment: Docker Compose

## Services

| Component | Container | Purpose |
|---|---|---|
| JobManager | flink-jobmanager | Job coordination |
| TaskManager | flink-taskmanager | Job execution |

## Network

Docker network: dockerlab_network

JobManager address inside Docker:
flink-jobmanager:8081

Kafka broker inside Docker:
kafka_kraft_docker:29092

Flink UI:
http://localhost:18081

## Directory Structure

- config/ - Flink configuration
- docs/ - Documentation
- jobs/ - Shared job staging directory
- logs/ - Runtime logs
- scripts/ - Startup, shutdown and status scripts

## Operations

Start:

scripts/start.cmd

Stop:

scripts/stop.cmd

Status:

scripts/status.cmd

Stopping Flink does not remove containers or data.

## Submitting a PyFlink Job

Place or stage the required Python job files in the
shared jobs directory.

Submit from Windows CMD:

docker exec flink-jobmanager /opt/flink/bin/flink run --jobmanager flink-jobmanager:8081 --python /opt/flink/usrlib/job.py

Replace job.py with the actual job filename.

Monitor jobs through:

http://localhost:18081

## Project Integration

Individual projects retain ownership of:

- Application source code
- Python virtual environments
- Project dependencies
- Application configuration
- Kafka topics and consumer group IDs
- Flink job logic

Shared infrastructure provides:

- Kafka brokers
- Flink JobManager
- Flink TaskManagers
- Docker networking

Projects must not deploy duplicate Kafka or Flink clusters
unless isolation or compatibility requirements justify it.

## Important

The jobs directory is a staging location, not the permanent
home of project source code.

Keep actual project code in its respective repository.