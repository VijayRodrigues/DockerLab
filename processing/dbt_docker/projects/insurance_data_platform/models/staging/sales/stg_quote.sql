SELECT *

FROM {{ source('sales', 'quote') }}