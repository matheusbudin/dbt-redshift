DBT pipeline project:
Datasource: Northwind DB (data)

1) Download the "scripts e dados" folder, you will have the csv files that has all the data for this pipeline.;
2) After creating a redshift cluster, run the "northwindddl.sql" inside of your cluster;
3) upload all the .csv files inside of a S3 bucket, and then open the "copy.sql" file on text editor and change the bucket name, user and so on
settings according to your account.
4) run the "copy.ddl" (with your adjustments to fit your account) on redshift.

This run this project you will need to create a DB and Schema using the DDL provided as DDL.sql
You run the DDL code inside your DataWarehouse of choice (in this case: AWS Redshift, but it could've been Snowflake or GCP or Databricks)

Once you have your redshift cluster created (be caruful with costs), you should be good to start modeling your data inside DBT.
Remember to run "DBT RUN --select <tablle_name.sql> " everytime you have a new table done (that sends the tables to your DW).

Finally, create you job inside DBT interface and run it, it should work as intended. for any doubts please contact me on linkedin:

https://linkedin.com/matheusbudin

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
