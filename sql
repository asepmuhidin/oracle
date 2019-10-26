1.) select orders.order_id,cust.cust_first_name,cust.cust_street_address1,
    sum(order_detail.quantity*order_detail.Unit_Price) as grand_total
    from demo_orders orders inner join demo_order_items order_detail 
    on orders.order_id=order_detail.order_id 
    inner join demo_customers cust 
    on orders.customer_id=cust.customer_id
    group by orders.order_id,cust.cust_first_name,cust.cust_street_address1

2.) select prod.product_id,product_name,quantity,unit_price,
    quantity*unit_price as subTotal
    from demo_order_items doi inner join demo_product_info prod
    on doi.product_id=prod.product_id

3.) select orders.customer_id, cust.cust_first_name,cust.cust_street_address1,
    sum(order_detail.quantity*order_detail.Unit_Price) as grand_total
    from demo_orders orders inner join demo_order_items order_detail 
    on orders.order_id=order_detail.order_id 
    right join demo_customers cust 
    on orders.customer_id=cust.customer_id
    group by cust.cust_first_name,cust.cust_street_address1,orders.customer_id
    order by orders.customer_id
