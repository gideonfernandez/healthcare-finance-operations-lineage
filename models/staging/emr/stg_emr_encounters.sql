-- models/staging/emr/stg_emr_encounters.sql

with final as (

    select

        cast(encounter_id as number) as encounter_id,
        cast(patient_id as varchar) as patient_id,
        cast(clinician_id as varchar) as clinician_id,
        cast(facility_id as varchar) as facility_id,
        cast(encounter_dt as date) as encounter_dt

    from {{ source('emr', 'encounters') }}

)

select * from final