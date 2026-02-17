-- Intermediate table: cleaned and enhanced customer data
SELECT
    id,
    first_name,
    last_name,
    email,
    signup_date,
    region,
    total_purchase,
    CASE 
        WHEN total_purchase > 500 THEN 'VIP'
        ELSE 'Regular'
    END AS customer_tier
FROM {{ ref('stg_customers') }}
