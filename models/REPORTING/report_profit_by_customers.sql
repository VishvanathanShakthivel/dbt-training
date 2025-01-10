select
    CUSTOMER_ID,
    SEGMENT,
    COUNTRY,
    sum(ORDER_PROFIT) as PROFIT
from
    {{ ref('stg_orders') }}
group by
    CUSTOMER_ID,
    SEGMENT,
    COUNTRY