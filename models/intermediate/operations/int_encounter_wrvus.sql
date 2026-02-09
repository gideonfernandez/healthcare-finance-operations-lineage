-- models/intermediate/operations/int_encounter_wrvus.sql

with encounters as (

    select * from {{ ref('stg_emr_encounters') }}

),

procedures as (

    select * from {{ ref('stg_emr_procedures') }}

),

final as (

    select

        e.encounter_id,
        e.encounter_dt,
        e.clinician_id,
        e.facility_id,

        sum(p.w_rvu * p.units) as total_w_rvu,

        count(*) as procedure_rows,
        count(distinct p.cpt_code) as distinct_cpt_codes

    from encounters e
    left join procedures p
        on p.encounter_id = e.encounter_id
    group by
        e.encounter_id,
        e.encounter_dt,
        e.clinician_id,
        e.facility_id

)

select * from final