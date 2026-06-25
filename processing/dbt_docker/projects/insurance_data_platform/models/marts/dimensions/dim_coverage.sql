SELECT

    coverage_type_id,
    coverage_code,
    coverage_name,
    coverage_description,
    created_at,
    updated_at

FROM {{ ref('stg_coverage_type') }}