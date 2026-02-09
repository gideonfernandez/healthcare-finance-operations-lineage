-- models/staging/billing/stg_billing_claims.sql

with final as (

    select

        cast(claim_id as number) as claim_id,
        cast(encounter_id as number) as encounter_id,
        cast(payer_id as varchar) as payer_id,
        cast(charge_amount as float) as charge_amount,
        cast(claim_submitted_dt as date) as claim_submitted_dt

    from {{ source('billing', 'claims') }}

)

select * from final