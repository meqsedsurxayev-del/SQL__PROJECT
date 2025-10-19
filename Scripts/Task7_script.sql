-- ========================================
-- TAPSIRIQ 7: Endirimin satışa təsirini analiz et
-- Endirimli vs Endirimsiz sifarişlər
-- ========================================
SELECT CASE WHEN OD.DISCOUNT > 0 THEN 'Discounted' ELSE 'Non-Discounted' END AS DISCOUNT_TYPE,
       COUNT(DISTINCT O.ORDER_ID) AS ORDER_COUNT,
       SUM(P.UNIT_PRICE * OD.QUANTITY) AS TOTAL_SALES
FROM ORDER_DETAILS OD
JOIN ORDERS O ON O.ORDER_ID = OD.ORDER_ID
JOIN PRODUCTS P ON P.PRODUCT_ID = OD.PRODUCT_ID
WHERE O.STATUS = 'Completed'
GROUP BY CASE WHEN OD.DISCOUNT > 0 THEN 'Discounted' ELSE 'Non-Discounted' END
ORDER BY ORDER_COUNT DESC;