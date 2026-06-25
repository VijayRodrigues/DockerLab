SELECT

    broker_id,
    broker_number,

    broker_name,

    registration_number,

    contact_person,

    email_address,
    mobile_number,

    broker_status,

    created_at,
    updated_at

FROM {{ ref('stg_broker') }}