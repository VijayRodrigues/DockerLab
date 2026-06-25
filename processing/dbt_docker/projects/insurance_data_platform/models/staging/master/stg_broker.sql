SELECT *

FROM {{ source('master', 'broker') }}