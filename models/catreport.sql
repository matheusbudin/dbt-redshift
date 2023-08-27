{{
    config(
        materialized='incremental',
        unique_key  = 'category_id'
    )

}}
--ephemeral nao é para aparecer no redshift mas posso usar no dbt para modelagem materialized='ephemeral'
-- table  materialized='table' nao atualiza incrementalmente se a source mudar
-- 

select * from {{source('sources', 'categories')}}