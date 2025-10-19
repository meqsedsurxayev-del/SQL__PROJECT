-- ========================================
-- TAPSIRIQ 10: Qaytarılma faizi
-- ========================================
SELECT COUNT(CASE WHEN STATUS='Returned' THEN 1 END) AS RETURNED_ORDERS,
       COUNT(ORDER_ID) AS TOTAL_ORDERS,
       (COUNT(CASE WHEN STATUS='Returned' THEN 1 END)/COUNT(ORDER_ID))*100 AS RATIO_RETURN
FROM ORDERS;