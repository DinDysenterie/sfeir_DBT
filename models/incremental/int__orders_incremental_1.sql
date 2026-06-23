{{
    config(materialized='incremental',
    )
}}

SELECT
    *
FROM {{ ref("stg__orders") }}

{% if is_incremental() %}
WHERE order_datetime > (SELECT MAX(order_datetime) FROM {{ this }})
{% endif %}