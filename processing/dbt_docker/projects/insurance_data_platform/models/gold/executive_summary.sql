SELECT

    COUNT(DISTINCT policy_id) AS total_policies,

    SUM(total_premium) AS total_premium,

    SUM(total_sum_insured) AS total_sum_insured

FROM {{ ref('fact_policy') }}