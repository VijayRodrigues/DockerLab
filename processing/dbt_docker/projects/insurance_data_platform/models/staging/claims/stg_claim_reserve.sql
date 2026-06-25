SELECT *

FROM {{ source('claims', 'claim_reserve') }}