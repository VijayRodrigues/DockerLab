SELECT

    p.policy_id,
    p.policy_number,

    c.full_name,

    pr.product_name,

    b.branch_name,

    p.policy_status,

    p.policy_effective_date,
    p.policy_expiry_date,

    p.total_sum_insured,
    p.total_premium

FROM {{ ref('fact_policy') }} p

LEFT JOIN {{ ref('dim_customer') }} c

ON p.customer_id = c.customer_id

LEFT JOIN {{ ref('dim_product') }} pr

ON p.insurance_product_id = pr.insurance_product_id

LEFT JOIN {{ ref('dim_branch') }} b

ON p.branch_id = b.branch_id