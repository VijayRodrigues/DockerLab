#!/bin/sh
set -eu

TOKEN=$(curl -fsS \
  -u "$POLARIS_ROOT_CLIENT_ID:$POLARIS_ROOT_CLIENT_SECRET" \
  -d 'grant_type=client_credentials&scope=PRINCIPAL_ROLE:ALL' \
  http://polaris_docker:8181/api/catalog/v1/oauth/tokens |
  sed -n 's/.*"access_token":"\([^"]*\)".*/\1/p')

BASE=http://polaris_docker:8181/api/management/v1
AUTH="Authorization: Bearer $TOKEN"

echo "1. Creating Trino principal role..."
curl -fsS -X POST "$BASE/principal-roles" \
  -H "$AUTH" -H 'Polaris-Realm: POLARIS' \
  -H 'Content-Type: application/json' \
  -d '{"principalRole":{"name":"trino_root_role","properties":{}}}'

echo
echo "2. Assigning role to root principal..."
curl -fsS -X PUT "$BASE/principals/root/principal-roles" \
  -H "$AUTH" -H 'Polaris-Realm: POLARIS' \
  -H 'Content-Type: application/json' \
  -d '{"principalRole":{"name":"trino_root_role"}}'

echo
echo "3. Assigning catalog role..."
curl -fsS -X PUT "$BASE/principal-roles/trino_root_role/catalog-roles/iceberg_warehouse" \
  -H "$AUTH" -H 'Polaris-Realm: POLARIS' \
  -H 'Content-Type: application/json' \
  -d '{"catalogRole":{"name":"trino_admin"}}'

echo
echo "4. Granting catalog content permissions..."
curl -fsS -X PUT "$BASE/catalogs/iceberg_warehouse/catalog-roles/trino_admin/grants" \
  -H "$AUTH" -H 'Polaris-Realm: POLARIS' \
  -H 'Content-Type: application/json' \
  -d '{"type":"catalog","privilege":"CATALOG_MANAGE_CONTENT"}'

echo
echo "All permissions configured."