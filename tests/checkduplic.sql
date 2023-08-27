select count(*) as count, company_name, contact_name from 
{{ref('customers')}}
group by company_name, contact_name
having count > 1
--se o resultado for 0 results quer dizer que o teste passou 
-- cli: dbt test <enter>