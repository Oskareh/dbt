{{ config(materialized='table') }}

SELECT *
FROM (
    SELECT * FROM capstone.sales_before
    UNION ALL
    SELECT * FROM capstone.sales_after
) AS temp_fact_sale
LEFT JOIN (
    SELECT
        productid AS dim_product_id,
        TYPE,
        typename,
        volume,
        price,
        duration
    FROM capstone.dim_product
) AS dim_product2
ON temp_fact_sale.productid = dim_product2.dim_product_id
