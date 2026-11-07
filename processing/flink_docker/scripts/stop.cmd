@echo off
setlocal

set "COMPOSE_FILE=%~dp0..\docker-compose.yml"

echo Stopping shared Flink infrastructure...
docker compose -f "%COMPOSE_FILE%" stop

if errorlevel 1 (
    echo ERROR: Failed to stop Flink.
    exit /b 1
)

echo Flink stopped. Containers and data are preserved.