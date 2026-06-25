from datetime import datetime

from airflow import DAG
from airflow.operators.python import PythonOperator

from insurance_data_platform.config import (
    DAG_ID,
    RETRIES,
    SCHEDULE
)

from insurance_data_platform.tasks import run_main


with DAG(

    dag_id=DAG_ID,

    start_date=datetime(
        2026,
        1,
        1
    ),

    schedule=SCHEDULE,

    catchup=False,

    default_args={
        "owner": "Vijay Rodrigues",
        "retries": RETRIES
    },

    tags=[
        "insurance",
        "data-platform"
    ]

) as dag:

    run_pipeline = PythonOperator(

        task_id="run_pipeline",

        python_callable=run_main

    )