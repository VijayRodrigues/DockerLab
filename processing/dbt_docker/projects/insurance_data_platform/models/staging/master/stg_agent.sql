SELECT *

FROM {{ source('master', 'agent') }}