#!/bin/sh
set -eu

TOKEN=$(curl -fsS \
  -u "$POLARIS_ROOT_CLIENT_ID:$POLARIS_ROOT_CLIENT_SECRET" \
  -d "grant_type=client_credentials&scope=PRINCIPAL_ROLE:ALL" \
  http://polaris_docker:8181/api/catalog/v1/oauth/tokens |
  sed -n 's/.*"access_token":"\([^"]*\)".*/\1/p')

echo "Token length: ${#TOKEN}"

test -n "$TOKEN"

curl -sS -i \
  http://polaris_docker:8181/api/management/v1/catalogs \
  -H "Authorization: Bearer $TOKEN" \
  -H "Polaris-Realm: POLARIS"