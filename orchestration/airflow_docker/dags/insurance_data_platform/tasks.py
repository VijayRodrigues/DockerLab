import os
import subprocess

from insurance_data_platform.config import (
    PROJECT_ROOT,
    PYTHON_EXECUTABLE
)


def run_main():

    subprocess.run(
        [
            str(PYTHON_EXECUTABLE),
            str(PROJECT_ROOT / "src" / "main.py")
        ],
        check=True
    )


def run_dbt():

    env = os.environ.copy()

    env["DBT_LOG_PATH"] = "/tmp/dbt_logs"
    env["DBT_TARGET_PATH"] = "/tmp/dbt_target"

    subprocess.run(
        [
            "dbt",
            "build",
            "--profiles-dir",
            "/home/airflow/.dbt",
            "--target-path",
            "/tmp/dbt_target",
            "--log-path",
            "/tmp/dbt_logs"
        ],
        cwd="/opt/projects/dbt_docker/projects/insurance_data_platform",
        env=env,
        check=True
    )