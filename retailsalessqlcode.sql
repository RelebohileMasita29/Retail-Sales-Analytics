--data processing sql code(on snowflake)--
SELECT
  transaction_id,
  customer_id,
  TO_DATE(DATE) AS DATE,
  DAYOFMONTH(TO_DATE (DATE)) AS dayofsale,
  DAYNAME(TO_DATE(DATE)) AS day_name,
  TO_CHAR(TO_DATE(DATE), 'YYYYMM') AS monthid,
  CASE 
    WHEN age BETWEEN '18' AND '24' THEN 'Youth'
    WHEN age BETWEEN '25' AND '59' THEN 'Adult'
    WHEN age BETWEEN '60' AND '65' THEN 'Old'
    ELSE 'null'
  END AS AgeBucket,
  --categories--
  age,
  gender,
  product_category,
  quantity,
  price_per_unit,
  total_amount AS totalrevenue,  
FROM "DATAANALYTICS"."PUBLIC"."RETAILSALES"
