-- ========================================
-- TAPSIRIQ 9: Ləğv edilmiş və tamamlanmış sifarişlərin nisbəti
-- ========================================
SELECT COUNT(CASE WHEN STATUS='Cancelled' THEN 1 END) AS CANCELLED_ORDERS,
       COUNT(CASE WHEN STATUS='Completed' THEN 1 END) AS COMPLETED_ORDERS,
       ROUND((COUNT(CASE WHEN STATUS='Cancelled' THEN 1 END) / COUNT(CASE WHEN STATUS='Completed' THEN 1 END)),2) AS RATIO_ORDERS
FROM ORDERS;