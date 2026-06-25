SELECT

    claim_status,
    claim_type,

    COUNT(*) AS total_claims,

    SUM(claim_amount) AS total_claim_amount,

    SUM(approved_amount) AS total_approved_amount

FROM {{ ref('fact_claim') }}

GROUP BY

    claim_status,
    claim_type