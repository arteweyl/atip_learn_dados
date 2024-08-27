create user colab with password 'atip';

grant connect on database atiplearn to colab;

--bronze
create schema bronze;
grant usage on schema  bronze to colab;
grant create on schema bronze to colab;
grant select, insert, update, delete on all tables in schema  bronze to colab;

--se quisesse mudar
--ALTER DEFAULT PRIVILEGES IN SCHEMA bronze GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO colab;
--GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA bronze TO COLAB;

select * from silver.finance_data;



-- permissões silver
create schema silver;
grant usage on schema silver to colab;
grant create on schema silver to colab;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA silver TO colab;

revoke all privileges  on all tables in schema silver from colab;

-- permissões gold
create schema gold;
grant usage on schema gold to colab;
grant create on schema gold to colab;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA gold TO colab;

create user powerbi with password 'atip';
grant connect on database atiplearn to powerbi;
grant select on all tables in schema silver to powerbi;
grant select on all tables in schema gold to powerbi;
grant usage on schema gold to powerbi;
grant usage on schema silver to powerbi;