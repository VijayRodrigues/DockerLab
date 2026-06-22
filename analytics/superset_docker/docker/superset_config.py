import os

SECRET_KEY = "VijayDockerLabSupersetSecretKey2026@123456789"

SQLALCHEMY_DATABASE_URI = (
    "postgresql+psycopg2://"
    "superset_user:"
    "superset_password@"
    "superset_postgres_docker:5432/"
    "superset_db"
)