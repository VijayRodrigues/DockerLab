@echo off
setlocal

set "COMPOSE_FILE=%~dp0..\docker-compose.yml"

echo Starting shared Flink infrastructure...
docker compose -f "%COMPOSE_FILE%" up -d

if errorlevel 1 (
    echo ERROR: Failed to start Flink.
    exit /b 1
)

docker compose -f "%COMPOSE_FILE%" ps