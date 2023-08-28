{{

    config(
        materialized='table',
        post_hook==["
            GRANT USAGE ON SCHEMA {{target.schema}} TO GROUP biusers;
            GRANT SELECT ON TABLE {{target.schema}}.bireport TO GROUP biusers;

        "
        ]
    )

}}

--taget.schema (modelo JINJA) pega o schema que estiver rodando (podendo variar entre desenvolvedores)
select * from {{ref('joins')}}
