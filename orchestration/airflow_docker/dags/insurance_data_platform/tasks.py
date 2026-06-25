
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

    subprocess.run(
        [
            "dbt",
            "build"
        ],
        cwd="/opt/projects/dbt_docker/projects/insurance_data_platform",
        check=True
    )