--CTE common table expression code
--criar nova coluna e repetir o cliente quando estiver duplicado
with markup as (
SELECT * ,
first_value(customer_id)
over(partition by company_name, contact_name
order by company_name
rows between unbounded preceding and unbounded following) as result --mostra todos os clientes duplicados nessa nova coluna
from {{source('sources', 'customers')}}

), removed as (
    SELECT DISTINCT result FROM markup

), final as (
    SELECT * FROM {{source('sources', 'customers')}} WHERE customer_id in (SELECT result FROM removed)
)

SELECT * FROM final