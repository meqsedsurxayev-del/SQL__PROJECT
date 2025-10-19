-- ========================================
-- TAPSIRIQ 1: Ümumi satış məbləğini hesabla
-- unit_price * quantity - discount
-- ========================================
SELECT SUM(P.UNIT_PRICE * OD.QUANTITY - OD.DISCOUNT) AS TOTAL_SALES
FROM PRODUCTS P
JOIN ORDER_DETAILS OD 
  ON P.PRODUCT_ID = OD.PRODUCT_ID
JOIN ORDERS O
  ON OD.ORDER_ID = O.ORDER_ID
WHERE O.STATUS = 'Completed';