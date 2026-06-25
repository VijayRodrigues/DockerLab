SELECT *

FROM {{ source('claims', 'claim_payment') }}