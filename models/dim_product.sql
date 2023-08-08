with products as(
    select productid as product_id ,
        price/5000 as pirce ,
        duration , 
        volume, 
        type ,
        typename as type_name
    from capstone.dim_product
), 

with customers as (
    select scustomer
)


