select
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    SUB_CATEGORY,
    sum(ORDER_PROFIT) as PROFIT
from
    {{ ref('stg_orders') }}
group by
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    SUB_CATEGORY