SELECT

    claim_payment_id,
    payment_reference,

    claim_id,

    payment_date,

    payment_amount,

    payment_method,
    payment_status,

    transaction_reference,

    remarks,

    created_at,
    updated_at

FROM {{ ref('stg_claim_payment') }}