SELECT

    policy_id,
    policy_number,

    customer_id,
    insurance_product_id,

    branch_id,
    agent_id,
    broker_id,
    underwriter_id,

    quote_id,

    policy_effective_date,
    policy_expiry_date,
    policy_issue_date,

    policy_status,

    total_sum_insured,
    total_premium,

    currency_code,

    created_at,
    updated_at

FROM {{ ref('stg_policy') }}