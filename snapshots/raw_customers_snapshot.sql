{% snapshot raw_customers_snapshot %}

{{
    config(
        target_schema='public',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    id,
    first_name,
    last_name,
    email,
    signup_date,
    region,
    total_purchase,
    updated_at
FROM public.raw_customers

{% endsnapshot %}
