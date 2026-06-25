SELECT *

FROM {{ source('sales', 'quote_version') }}