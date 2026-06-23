SELECT * FROM (
  SELECT count(*) AS C FROM {{ ref("int__orders") }}
) AS _ WHERE _.C < 2