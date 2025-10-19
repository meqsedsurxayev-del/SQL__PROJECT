-- ========================================
-- TAPSIRIQ 5: Ən çox alış-veriş edən 5 müştəri
-- ========================================
SELECT C.CUSTOMER_ID,
       COUNT(O.ORDER_ID) AS ORDER_COUNT
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUSTOMER_ID=C.CUSTOMER_ID
WHERE O.STATUS='Completed'
GROUP BY C.CUSTOMER_ID
ORDER BY ORDER_COUNT DESC
FETCH NEXT 5 ROWS ONLY;