SELECT

    c.customer_id,
    c.customer_number,
    c.full_name,
    c.city,
    c.state,
    c.country,

    COUNT(DISTINCT p.policy_id) AS total_policies,

    SUM(p.total_premium) AS total_premium,

    SUM(p.total_sum_insured) AS total_sum_insured

FROM {{ ref('dim_customer') }} c

LEFT JOIN {{ ref('fact_policy') }} p

ON c.customer_id = p.customer_id

GROUP BY

    c.customer_id,
    c.customer_number,
    c.full_name,
    c.city,
    c.state,
    c.country