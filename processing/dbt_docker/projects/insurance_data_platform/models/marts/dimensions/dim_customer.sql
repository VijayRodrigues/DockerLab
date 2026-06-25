WITH customer AS (

    SELECT *

    FROM {{ ref('stg_customer') }}

),

customer_address AS (

    SELECT *

    FROM {{ ref('stg_customer_address') }}

    WHERE is_primary = TRUE

),

business_customer AS (

    SELECT *

    FROM {{ ref('stg_business_customer') }}

)

SELECT

    c.customer_id,
    c.customer_number,

    c.first_name,
    c.middle_name,
    c.last_name,

    CONCAT(
        c.first_name,
        ' ',
        COALESCE(c.middle_name || ' ', ''),
        c.last_name
    ) AS full_name,

    c.date_of_birth,
    c.gender,

    c.email_address,
    c.mobile_number,

    c.national_id_number,

    c.occupation,
    c.marital_status,

    c.customer_status,

    a.address_type,
    a.address_line_1,
    a.address_line_2,
    a.landmark,
    a.city,
    a.state,
    a.postal_code,
    a.country,

    b.business_name,
    b.registration_number,
    b.tax_identifier,
    b.industry,
    b.annual_revenue,
    b.employee_count,
    b.established_date,

    c.created_at,
    c.updated_at

FROM customer c

LEFT JOIN customer_address a
       ON c.customer_id = a.customer_id

LEFT JOIN business_customer b
       ON c.customer_id = b.customer_id