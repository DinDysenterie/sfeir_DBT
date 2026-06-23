SELECT
  orders.*
  , customers.customer_name
  , countries.country_name
FROM {{ ref("stg__orders") }} AS orders
    INNER JOIN {{ ref("stg_customers") }} AS customers ON customers.customer_id = orders.customer_id
    INNER JOIN {{ ref("stg_countries") }} AS countries ON customers.customer_country = countries.country_code