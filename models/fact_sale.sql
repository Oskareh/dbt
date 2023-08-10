{{ config(materialized='table') }}

with Product AS (
    SELECT * from {{ ref('stg_product')}}
),

sales as (
    SELECT * from {{ref('stg_sales')}}
),


fact_sale as (
    SELECT * from  sales
    LEFT JOIN Product 
    ON sales.productid = Product.dim_product_id
)

select * from fact_sale