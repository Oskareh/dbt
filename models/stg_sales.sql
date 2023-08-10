with sales as(
    SELECT * FROM capstone.sales_before
    UNION ALL
    SELECT * FROM capstone.sales_after
)

select * from sales