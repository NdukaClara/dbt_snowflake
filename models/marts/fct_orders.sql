select
    orders.*,
    item_summary.gross_item_sales_amount,
    item_summary.item_discount_amount
from
    {{ ref('stg_tpch_orders') }} as orders
join 
    {{ ref('int_order_items_summary') }} as item_summary
        on orders.order_key = item_summary.order_key
order by
    orders.order_date