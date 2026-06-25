SELECT *

FROM {{ source('master', 'customer_address') }}