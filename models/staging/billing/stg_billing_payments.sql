-- models/staging/billing/stg_billing_payments.sql

with final as (

    select

        cast(payment_id as number) as payment_id,
        cast(claim_id as number) as claim_id,
        cast(payment_amount as float) as payment_amount,
        cast(payment_dt as date) as payment_dt

    from {{ source('billing', 'payments') }}

)

select * from final