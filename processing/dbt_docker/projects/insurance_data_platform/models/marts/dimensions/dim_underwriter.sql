SELECT

    u.underwriter_id,
    u.underwriter_number,

    u.first_name,
    u.last_name,

    CONCAT(u.first_name, ' ', u.last_name) AS full_name,

    u.email_address,
    u.mobile_number,

    u.underwriting_authority,

    u.branch_id,
    b.branch_name,

    u.underwriter_status,

    u.created_at,
    u.updated_at

FROM {{ ref('stg_underwriter') }} u

LEFT JOIN {{ ref('dim_branch') }} b

ON u.branch_id = b.branch_id