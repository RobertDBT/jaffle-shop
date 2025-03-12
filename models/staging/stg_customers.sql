-- I'm adding these lines to create 
-- a merge conflict in the dbt Cloud IDE
with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),


renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source
    where id is not null

)
  {% macro some_macro(arg1, arg2) %}
    {{ print("Running some_macro: " + env_var("DBT_FIRST_ENV_VAR")) }}
  {% endmacro %}

select * from renamed
