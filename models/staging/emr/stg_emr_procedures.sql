-- models/staging/emr/stg_emr_procedures.sql

with final as (

    select

        cast(encounter_id as number) as encounter_id,
        cast(cpt_code as varchar) as cpt_code,
        cast(w_rvu as float) as w_rvu,
        cast(units as number) as units

    from {{ source('emr', 'procedures') }}

)

select * from final