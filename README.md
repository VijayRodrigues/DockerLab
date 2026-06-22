# 🚀 DockerLab

> **A production-inspired local Data Engineering & AI platform built
> with Docker Compose.**

## Overview

DockerLab is a modular local platform designed to simulate a modern data
engineering and AI ecosystem. It combines data storage, messaging,
orchestration, transformation, analytics, observability, and AI tooling
into a single Docker-based environment.

The objective is to provide a realistic development environment for
building end-to-end portfolio projects rather than isolated technology
demos.

------------------------------------------------------------------------

# Architecture

``` text
                +----------------------+
                |      Airflow         |
                +----------+-----------+
                           |
                           v
Kafka ---> PostgreSQL ---> dbt ---> Trino ---> Power BI
   |             |                    |
   |             |                    |
   +-----------> MinIO <--------------+
                    |
                    v
               JupyterLab
                    |
                    v
                 MLflow
                    |
                    v
              Ollama + Open WebUI

Monitoring:
Prometheus
Grafana
Node Exporter
cAdvisor
Kafka Exporter
Postgres Exporter
Redis Exporter
```

------------------------------------------------------------------------

# Current Components

## Databases

-   PostgreSQL
-   Redis

## Messaging

-   Apache Kafka (KRaft)
-   Kafka + ZooKeeper

## Storage

-   MinIO
-   Azurite
-   LocalStack

## Orchestration

-   Apache Airflow

## Processing

-   dbt
-   Trino

## Observability

-   Prometheus
-   Grafana
-   Node Exporter
-   cAdvisor
-   PostgreSQL Exporter
-   Redis Exporter
-   Kafka Exporter

## Infrastructure

-   Nginx

## AI

-   JupyterLab
-   MLflow
-   Ollama
-   Open WebUI

------------------------------------------------------------------------

# Repository Structure

``` text
DockerLab
├── ai
├── analytics
├── databases
├── docs
├── infrastructure
├── messaging
├── observability
├── orchestration
├── processing
├── storage
├── tools
├── .gitignore
├── LICENSE
└── README.md
```

------------------------------------------------------------------------

# Technologies

-   Docker & Docker Compose
-   PostgreSQL
-   Redis
-   Apache Kafka
-   Apache Airflow
-   dbt
-   Trino
-   MinIO
-   Azurite
-   LocalStack
-   Prometheus
-   Grafana
-   JupyterLab
-   MLflow
-   Ollama
-   Open WebUI
-   Python

------------------------------------------------------------------------

# Goals

-   Build production-inspired data engineering projects
-   Build AI-enabled data platforms
-   Demonstrate modern ELT workflows
-   Showcase orchestration, monitoring, and observability
-   Serve as the foundation for portfolio projects

------------------------------------------------------------------------

# Planned Projects

-   Real-Time Customer Analytics Platform
-   Insurance Data Platform
-   Modern Lakehouse Architecture
-   AI Data Assistant
-   Data Quality Framework
-   Metadata & Lineage Platform

------------------------------------------------------------------------

# Roadmap

## Completed

-   PostgreSQL
-   Redis
-   Kafka
-   Airflow
-   Trino
-   dbt
-   MinIO
-   Grafana
-   Prometheus
-   JupyterLab
-   MLflow
-   Ollama
-   Open WebUI
-   Nginx

## In Progress

-   Apache Spark

## Future

-   Production portfolio projects
-   Advanced AI workflows
-   RAG implementations
-   Lakehouse pipelines

------------------------------------------------------------------------

# Skills Demonstrated

-   Docker
-   Containerized Development
-   Data Engineering
-   ELT
-   Data Orchestration
-   Data Observability
-   Data Transformation
-   AI Infrastructure
-   MLOps Fundamentals

------------------------------------------------------------------------

# Author

**Vijay Rodrigues**

GitHub: https://github.com/

Portfolio: https://www.vijayrodrigues.com/

------------------------------------------------------------------------

## License

MIT License
