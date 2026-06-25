SELECT

    a.agent_id,
    a.agent_number,

    a.first_name,
    a.last_name,

    CONCAT(a.first_name, ' ', a.last_name) AS full_name,

    a.email_address,
    a.mobile_number,

    a.license_number,
    a.hire_date,

    a.branch_id,
    b.branch_name,

    a.agent_status,

    a.created_at,
    a.updated_at

FROM {{ ref('stg_agent') }} a

LEFT JOIN {{ ref('dim_branch') }} b

ON a.branch_id = b.branch_id