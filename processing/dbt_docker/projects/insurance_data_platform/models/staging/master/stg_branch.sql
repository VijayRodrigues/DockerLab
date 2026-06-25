SELECT *

FROM {{ source('master', 'branch') }}