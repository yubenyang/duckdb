CALL dbgen(sf=80);
EXPORT DATABASE 'duckdb_benchmark_data/tpch_parquet' (FORMAT PARQUET);

create view customer_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/customer.parquet');
create view customer_native as select * from customer;

create view lineitem_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/lineitem.parquet');
create view lineitem_native as select * from lineitem;

create view nation_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/nation.parquet');
create view nation_native as select * from nation;

create view orders_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/orders.parquet');
create view orders_native as select * from orders;

create view part_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/part.parquet');
create view part_native as select * from part;

create view partsupp_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/partsupp.parquet');
create view partsupp_native as select * from partsupp;

create view region_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/region.parquet');
create view region_native as select * from region;

create view supplier_parquet as select * from read_parquet('duckdb_benchmark_data/tpch_parquet/supplier.parquet');
create view supplier_native as select * from supplier;