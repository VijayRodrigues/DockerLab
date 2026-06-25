SELECT

    premium_id,
    premium_number,

    policy_id,
    policy_version_id,

    premium_frequency,

    premium_amount,
    tax_amount,
    total_amount,

    due_date,

    premium_status,

    created_at,
    updated_at

FROM {{ ref('stg_premium') }}