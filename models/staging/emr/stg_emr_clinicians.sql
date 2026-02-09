-- models/staging/emr/stg_emr_clinicians.sql

with final as (

    select

        cast(clinician_id as varchar) as clinician_id,
        cast(clinician_name as varchar) as clinician_name,
        cast(specialty as varchar) as specialty

    from {{ source('emr', 'clinicians') }}

)

select * from final