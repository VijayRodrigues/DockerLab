from pathlib import Path

PROJECT_ROOT = Path(
    "/opt/projects/insurance-data-platform"
)

SRC_DIRECTORY = PROJECT_ROOT / "src"

PYTHON_EXECUTABLE = "python"

DAG_ID = "insurance_data_platform"

SCHEDULE = None

RETRIES = 1