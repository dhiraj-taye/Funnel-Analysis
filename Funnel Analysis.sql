USE funnel_analysis;

select * from funnel_data;
-- Checking for Events

SELECT DISTINCT Event FROM funnel_data;

-- Checking for total number of user in each funnel stage

SELECT Event, COUNT(DISTINCT User_ID) AS Unique_users
FROM funnel_data
GROUP BY Event
ORDER BY Unique_users DESC;

-- Conversion Rate Purchase-Browse

SELECT 
    COUNT(DISTINCT CASE WHEN Event = 'Purchase' THEN User_ID END) 
    /
    COUNT(DISTINCT CASE WHEN Event = 'Browse' THEN User_ID END) 
    * 100 AS overall_conversion_percentage
FROM funnel_data;

-- Conversion Rate Browse-Add-to-cart

SELECT
  ROUND(COUNT(DISTINCT CASE WHEN Event = 'AddToCart' THEN User_ID END)
  /
  COUNT(DISTINCT CASE WHEN Event = "Browse" THEN User_ID END),2)
  * 100 AS conversion_rate_browse_to_AddtoCart
FROM funnel_data;

-- Conversion rate AddToCart-CheckOut

SELECT
  ROUND(COUNT(DISTINCT CASE WHEN Event = "Checkout" THEN User_ID END)
  /
  COUNT(DISTINCT CASE WHEN Event = "AddToCart" THEN User_ID END),2)
  * 100 AS conversion_rate_AddToCart_to_Checkout
FROM funnel_data;

-- Conversion rate Checkout-Purchase

SELECT
  ROUND(COUNT(DISTINCT CASE WHEN Event = "Purchase" THEN User_ID END)
  /
  COUNT(DISTINCT CASE WHEN Event = "Checkout" THEN User_ID END),2)
  * 100 AS converison_rate_checkout_purchase
FROM funnel_data;

-- Insights
-- Biggest drop = Checkout → Purchase.
