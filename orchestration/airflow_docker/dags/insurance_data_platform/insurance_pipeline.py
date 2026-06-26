from datetime import datetime
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator

from insurance_data_platform.config import (
    DAG_ID,
    RETRIES,
    SCHEDULE
)

from insurance_data_platform.tasks import (
    run_dbt,
    run_main
)


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

    generate_and_load = PythonOperator(

        task_id="generate_and_load",

        python_callable=run_main

    )

    build_dbt = PythonOperator(
        task_id="build_dbt",
        python_callable=run_dbt
    )

    generate_and_load >> build_dbt