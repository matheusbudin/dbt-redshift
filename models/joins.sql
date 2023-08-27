
WITH prod AS (
    SELECT
    ct.category_name,
    sp.company_name AS suppliers,
    pd.product_name,
    pd.unit_price,
    pd.product_id

    FROM {{source('sources', 'products')}} AS pd
    LEFT JOIN {{source('sources', 'suppliers')}} AS sp
        ON (pd.supplier_id = sp.supplier_id)
    LEFT JOIN {{source('sources', 'categories')}} AS ct
        ON (pd.category_id = ct.category_id)
), orddetai AS (
    SELECT pd.*,
    od.order_id,
    od.quantity,
    od.discount
    FROM  {{ref('orderdetails')}} AS od --tabela ja foi criada anteriormente no dbt, por isso ref
    LEFT JOIN prod AS pd
        ON (od.product_id = pd.product_id)-- primeira tabela fato criada
), ordrs as (   

    SELECT ord.order_date,
    ord.order_id,
    cs.company_name AS customer,
    em.name AS employee,
    em.age,
    em.lengthofservice

    FROM {{source('sources','orders')}} AS ord
    --left join com table ja criadas
    LEFT JOIN{{ref('customers')}} AS cs
        ON (ord.customer_id = cs.customer_id)
    LEFT JOIN{{ref('employees')}} AS em
        ON (ord.employee_id = em.employee_id)
    LEFT JOIN{{source('sources','shippers')}} AS sh
        ON (ord.ship_via = sh.shipper_id)
), final_join AS(--join das duas tabelas fatos desnormalizadas

    SELECT 
    od.*,
    ord.order_date,
    ord.customer,
    ord.employee,
    ord.age,
    ord.lengthofservice

    FROM orddetai AS od
    INNER JOIN ordrs AS ord
        ON (od.order_id = ord.order_id)
)

SELECT count(*) FROM final_join --os mesmos 2155 do redshift