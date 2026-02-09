-- models/intermediate/finance/int_encounter_financials.sql

with wrvus as (

    select * from {{ ref('int_encounter_wrvus') }}

),

collections as (

    select * from {{ ref('int_claim_collections') }}

),

final as (

    select

        w.encounter_id,
        w.encounter_dt,
        w.clinician_id,
        w.facility_id,
        w.total_w_rvu,
        w.procedure_rows,
        w.distinct_cpt_codes,

        cc.claim_id,
        cc.payer_id,
        cc.charge_amount,
        cc.claim_submitted_dt,
        cc.total_payments as collections_amount,
        cc.first_payment_dt,
        cc.last_payment_dt,
        cc.payment_events,

        datediff('day', cc.claim_submitted_dt, cc.first_payment_dt) as days_to_first_payment

    from wrvus w
    left join collections cc
        on cc.encounter_id = w.encounter_id

)

select * from final