SELECT

    insurance_product_id,

    product_code,

    product_name,

    product_category,

    description,

    minimum_sum_insured,
    maximum_sum_insured,

    minimum_premium,
    maximum_premium,

    product_status,

    effective_from,
    effective_to,

    created_at,
    updated_at

FROM {{ ref('stg_insurance_product') }}