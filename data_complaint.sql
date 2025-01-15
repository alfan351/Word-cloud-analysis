WITH cte_location as
(
    SELECT
        partner_id as lead_id
        , address_name
        , province_name
        , city_name
        , district_name
        , subdistrict_name
        , postal_code
    FROM `efishery-dwh-production`.`warehouse`.`dim_address`
    WHERE address_type_id = '01-01-01'
)
, cte_date as (
         select date
        ,holiday_flag
   from `efishery-dwh-production`.`warehouse`.`dim_date`
)

,cte_lost_revenue AS
(
  SELECT
    lost.lead_id,
    MAX(lost.order_at) AS last_transaction_date,
    DATE_DIFF(CURRENT_DATE(), MAX(lost.order_at), DAY) AS days_since_last_transaction,
    AVG(lost.subtotal_customer) AS lost_revenue
FROM `efishery-dwh-production`.`warehouse`.`fact_sale_order_line` lost
where lead_id is not null
GROUP BY 1 

)

,cte_lost as ( SELECT 
  lead_id,
  last_transaction_date, 
  days_since_last_transaction,
  lost_revenue 
FROM cte_lost_revenue
WHERE days_since_last_transaction > 90
)

, cte_final as
(
     SELECT
        DISTINCT complaint_handling.complaint_id
        ,complaint_handling.status_customer
        , complaint_handling.complaint_type
        , complaint_handling.complaint_priority
        , complaint_handling.customer_name
        , complaint_handling.leads_id
        , cte_location.address_name
        , cte_location.province_name
        , cte_location.city_name
        , cte_location.district_name
        , cte_location.subdistrict_name
        , CAST(cte_location.postal_code AS STRING) AS postal_code
        , complaint_handling.category
        , complaint_handling.sub_category
        , complaint_handling.source_app
        , complaint_handling.level_complaint
        , complaint_handling.status
        , complaint_handling.description
        , complaint_handling.order_id
        , complaint_handling.officer_name
        , complaint_handling.officer_email
        , complaint_handling.assign_to
        , DATETIME(TIMESTAMP(complaint_handling.start_call), 'Asia/Jakarta') AS start_call
        , DATETIME(TIMESTAMP(complaint_handling.end_call), 'Asia/Jakarta') AS end_call
        , DATETIME(TIMESTAMP(complaint_handling.created_at), 'Asia/Jakarta') AS created_at
        , complaint_handling.created_by
        , DATETIME(TIMESTAMP(complaint_handling.processed_at), 'Asia/Jakarta') AS processed_at
        , DATETIME(TIMESTAMP(complaint_handling.waiting_lv2_at), 'Asia/Jakarta') AS waiting_lv2_at
        , DATETIME(TIMESTAMP(complaint_handling.processed_lv2_at), 'Asia/Jakarta') AS processed_lv2_at
        , DATETIME(TIMESTAMP(complaint_handling.completed_at), 'Asia/Jakarta') AS completed_at
        , DATETIME(TIMESTAMP(complaint_handling.completed_lv2), 'Asia/Jakarta') AS completed_lv2
        , DATETIME(TIMESTAMP(complaint_handling.cancel_at), 'Asia/Jakarta') AS cancel_at
        , DATETIME(TIMESTAMP(complaint_handling.closed_at), 'Asia/Jakarta') AS closed_at
        , complaint_handling.ces
        , complaint_handling.duration_call
        , complaint_handling.respond_time
        , complaint_handling.resolution_time
        , complaint_handling.resolution_time_unit
        , complaint_handling.sla_traget
        , complaint_handling.source_complaint
        , complaint_handling.streamline
        , cte_date.holiday_flag
        , last_transaction_date
        , days_since_last_transaction
        , lost_revenue
        , solution
        , platform
        , tags
        , STRING_AGG(DISTINCT ord.kabayan_type, ', ') as kabayan_type
    FROM `efishery-dwh-production`.`temporary`.`tmp_complaint_handling` as complaint_handling
    LEFT JOIN `efishery-dwh-production`.`warehouse`.`fact_sale_order_line` as ord
        ON complaint_handling.leads_id = ord.lead_id
    LEFT JOIN cte_location
        ON complaint_handling.leads_id = cte_location.lead_id
    LEFT JOIN cte_date
        ON CAST(complaint_handling.created_at AS DATE) = CAST(cte_date.date AS DATE)
    LEFT JOIN cte_lost
        ON complaint_handling.leads_id = cte_lost.lead_id
 GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
         31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
         41, 42, 43, 44, 45 ,46 ,47 ,48
)

SELECT * FROM cte_final
