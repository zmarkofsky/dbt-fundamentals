with payments as (

    select
        id as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        status,
        amount/100 as amount,
        created,
        _batched_at

    from {{ source('stripe', 'payment') }}

)

select * from payments