-- Create cleaned sales view/table

SELECT
    customer_id,
    order_id,
    order_date,
    product,
    quantity,
    price,
    (quantity * price) AS total_amount,
    region
FROM sales
WHERE customer_id IS NOT NULL
  AND order_date IS NOT NULL;
