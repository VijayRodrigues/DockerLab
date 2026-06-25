SELECT *

FROM {{ source('claims', 'claim_note') }}