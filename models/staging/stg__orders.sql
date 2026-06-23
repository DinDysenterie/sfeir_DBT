SELECT
  *
FROM {{ source("sales", "orders") }}
WHERE 
  order_status IN ('COMPLETED', 'CANCELLED')