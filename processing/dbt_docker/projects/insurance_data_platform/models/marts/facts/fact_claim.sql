SELECT

    claim_id,
    claim_reference,

    fnol_id,
    policy_id,

    claim_type,
    claim_status,

    loss_date,
    reported_date,

    claim_amount,
    approved_amount,

    settlement_date,

    created_at,
    updated_at

FROM {{ ref('stg_claim') }}