with Product as (

 SELECT
        productid AS dim_product_id,
        TYPE,
        typename,
        volume,
        price,
        duration
    FROM capstone.dim_product
)

select * from Product