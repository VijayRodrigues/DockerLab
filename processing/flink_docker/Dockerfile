
# Stage 1: Resolve Kafka connector and runtime dependencies
FROM maven:3.9-eclipse-temurin-17 AS kafka-dependencies

WORKDIR /build

COPY kafka-connector-pom.xml pom.xml

RUN mvn -B dependency:copy-dependencies \
    -DincludeScope=runtime \
    -DoutputDirectory=/build/dependencies


# Stage 2: Build the shared PyFlink runtime
FROM flink:2.2.1-scala_2.12-java17

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-venv \
        postgresql-client \
    && python3 -m venv /opt/pyflink-venv \
    && /opt/pyflink-venv/bin/pip install --no-cache-dir --upgrade pip \
    && /opt/pyflink-venv/bin/pip install --no-cache-dir apache-flink==2.2.1 \
    && rm -rf /var/lib/apt/lists/*

COPY --from=kafka-dependencies /build/dependencies/ /opt/flink/lib/

ENV PATH="/opt/pyflink-venv/bin:${PATH}"
ENV PYFLINK_CLIENT_EXECUTABLE="/opt/pyflink-venv/bin/python"

USER flink
