-- models/intermediate/operations/int_claim_collections.sql

with claims as (

    select * from {{ ref('stg_billing_claims') }}

),

payments as (

    select * from {{ ref('stg_billing_payments') }}

),

final as (

    select

        c.claim_id,
        c.encounter_id,
        c.payer_id,
        c.charge_amount,
        c.claim_submitted_dt,

        coalesce(sum(p.payment_amount), 0) as total_payments,
        min(p.payment_dt) as first_payment_dt,
        max(p.payment_dt) as last_payment_dt,
        count(p.payment_id) as payment_events

    from claims c
    left join payments p
        on p.claim_id = c.claim_id
    group by
        c.claim_id,
        c.encounter_id,
        c.payer_id,
        c.charge_amount,
        c.claim_submitted_dt

)

select * from final