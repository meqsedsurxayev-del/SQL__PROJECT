-- ========================================
-- TAPSIRIQ 12: Qaytarılma səbəblərinin payı
-- ========================================
SELECT R.REASON,
       COUNT(CASE WHEN O.STATUS='Returned' THEN 1 END) AS RETURNED_ORDERS
FROM RETURNS R
JOIN ORDERS O ON R.ORDER_ID=O.ORDER_ID
GROUP BY R.REASON;