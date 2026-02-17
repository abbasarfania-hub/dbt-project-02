-- Mart table: summary by region

{{ config(materialized='table') }}

SELECT
    region,
    COUNT(id) AS total_customers,
    SUM(total_purchase) AS total_purchase,
    AVG(total_purchase) AS avg_purchase,
    SUM(CASE WHEN customer_tier = 'VIP' THEN 1 ELSE 0 END) AS vip_customers
FROM {{ ref('int_customers') }}
GROUP BY region
