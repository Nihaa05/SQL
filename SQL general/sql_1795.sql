# Write your MySQL query statement below
select * from (
    select product_id, 'store1' as store, store1 as price
    from products
    where store1 is not null

    union all

    select product_id, 'store2' as store, store2 as price
    from products
    where store2 is not null

    union all

    select product_id, 'store3' as store, store3 as price
    from products
    where store3 is not null
) X
order by product_id;