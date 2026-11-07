#!/bin/sh
set -eu

TOKEN=$(curl -fsS \
  -u "$POLARIS_ROOT_CLIENT_ID:$POLARIS_ROOT_CLIENT_SECRET" \
  -d "grant_type=client_credentials&scope=PRINCIPAL_ROLE:ALL" \
  http://polaris_docker:8181/api/catalog/v1/oauth/tokens |
  sed -n 's/.*"access_token":"\([^"]*\)".*/\1/p')

test -n "$TOKEN"

curl -fsS -X POST \
  http://polaris_docker:8181/api/management/v1/catalogs \
  -H "Authorization: Bearer $TOKEN" \
  -H "Polaris-Realm: POLARIS" \
  -H "Content-Type: application/json" \
  -d '{
    "catalog": {
      "name": "iceberg_warehouse",
      "type": "INTERNAL",
      "properties": {
        "default-base-location": "s3://dockerlab/iceberg/warehouse/"
      },
      "storageConfigInfo": {
        "storageType": "S3",
        "allowedLocations": ["s3://dockerlab/iceberg/warehouse/"],
        "endpoint": "http://172.24.0.14:9000",
        "endpointInternal": "http://172.24.0.14:9000",
        "pathStyleAccess": true,
        "stsUnavailable": true,
        "region": "us-east-1"
      }
    }
  }'

echo
echo "Catalog creation completed."