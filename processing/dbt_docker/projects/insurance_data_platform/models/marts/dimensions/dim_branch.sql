SELECT

    branch_id,
    branch_code,
    branch_name,

    address_line_1,
    address_line_2,

    city,
    state,
    postal_code,
    country,

    phone_number,
    email_address,

    branch_status,

    created_at,
    updated_at

FROM {{ ref('stg_branch') }}