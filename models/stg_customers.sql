-- Staging table for raw_customers
SELECT
    id,
    first_name,
    last_name,
    email,
    signup_date,
    region,
    total_purchase
FROM public.raw_customers
