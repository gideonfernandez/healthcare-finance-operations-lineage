-- models/staging/ops/stg_ops_facility_costs.sql

with final as (

    select

        cast(facility_id as varchar) as facility_id,
        cast(month as date) as month,
        cast(cost_amount as float) as cost_amount

    from {{ source('ops', 'facility_costs') }}
    
)

select * from final