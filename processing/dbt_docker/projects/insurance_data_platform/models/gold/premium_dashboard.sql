SELECT

    premium_status,
    premium_frequency,

    COUNT(*) AS total_premiums,

    SUM(total_amount) AS total_amount,

    AVG(total_amount) AS average_amount

FROM {{ ref('fact_premium') }}

GROUP BY

    premium_status,
    premium_frequency