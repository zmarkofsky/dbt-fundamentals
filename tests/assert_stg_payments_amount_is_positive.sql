with

payments as (
    SELECT * FROM {{ ref('stg_payments') }}
)

SELECT 
    order_id,
    sum(amount) as total_amount
FROM payments
group by order_id
having total_amount < 0