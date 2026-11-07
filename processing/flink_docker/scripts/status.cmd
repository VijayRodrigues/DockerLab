@echo off
setlocal

set "COMPOSE_FILE=%~dp0..\docker-compose.yml"

echo ===== SHARED FLINK STATUS =====
docker compose -f "%COMPOSE_FILE%" ps

echo.
echo ===== FLINK CLUSTER OVERVIEW =====
curl.exe -s http://localhost:18081/overview

echo.
echo.
echo Flink UI: http://localhost:18081