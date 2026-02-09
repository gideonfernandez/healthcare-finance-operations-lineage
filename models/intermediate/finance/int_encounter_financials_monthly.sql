-- models/intermediate/finance/int_encounter_financials_monthly.sql

with financials as (

    select * from {{ ref('int_encounter_financials') }}

),

final as (

    select

        date_trunc('month', encounter_dt) as month,
        clinician_id,
        facility_id,

        count(distinct encounter_id) as encounters,
        sum(total_w_rvu) as w_rvus,
        sum(coalesce(collections_amount, 0)) as collections,

        avg(days_to_first_payment) as avg_days_to_first_payment

    from financials
    group by
        date_trunc('month', encounter_dt),
        clinician_id,
        facility_id

)

select * from final