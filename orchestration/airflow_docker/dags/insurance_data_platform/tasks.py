import subprocess

from insurance_data_platform.config import (
    PYTHON_EXECUTABLE,
    PROJECT_ROOT
)


def run_main():

    subprocess.run(
        [
            str(PYTHON_EXECUTABLE),
            str(PROJECT_ROOT / "src" / "main.py")
        ],
        check=True
    )