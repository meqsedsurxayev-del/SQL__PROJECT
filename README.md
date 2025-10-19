## Project 1: E-Commerce Sales Analysis
## Bu layihənin məqsədi SQL vasitəsilə e-commerce satış məlumatlarını təhlil etmək, müştəri və məhsul davranışını öyrənmək, gəlir və satış trendini qiymətləndirməkdir. Nəticələr SQL-də yazılmış və Excel-də vizuallaşdırılmışdır
-- ========================================
-- TAPSIRIQ 1: Ümumi satış məbləğini hesabla
-- unit_price * quantity - discount
-- ========================================
## SQL Script
[SQLTask_1](Scripts/Task1_script.sql)

-- ========================================
-- TAPSIRIQ 2: Hər ay üzrə satış məbləği və sifariş sayı
-- ========================================
## SQL Script
[SQLTask_2](Scripts/Task2_script.sql)

## Chart
[Chart_Task2](Visualization/Task2.png)

-- ========================================
-- TAPSIRIQ 3: Hər məhsul üzrə gəlir, maya dəyəri və mənfəət
-- Ən çox ziyan edən 10 məhsul
-- ========================================

## SQL Script
[SQLTask_3](Scripts/Task3_script.sql)

## Chart
[Chart_Task3](Visualization/Task3.png)

-- ========================================
-- TAPSIRIQ 4: Ən çox gəlir gətirən 5 məhsul
-- ========================================

## SQL Script
[SQLTask_4](Scripts/Task4_script.sql)

## Chart
[Chart_Task4](Visualization/Task4.png)

-- ========================================
-- TAPSIRIQ 5: Ən çox alış-veriş edən 5 müştəri
-- ========================================

## SQL Script
[SQLTask_5](Scripts/Task5_script.sql)

## Chart
[Chart_Task5](Visualization/Task5.png)

-- ========================================
-- TAPSIRIQ 6: Şəhərlər üzrə ümumi satış və sifariş sayı
-- ========================================

## SQL Script
[SQLTask_6](Scripts/Task6_script.sql)

## Chart
[Chart_Task6](Visualization/Task6.png)

-- ========================================
-- TAPSIRIQ 7: Endirimin satışa təsirini analiz et
-- Endirimli vs Endirimsiz sifarişlər
-- ========================================

## SQL Script
[SQLTask_7](Scripts/Task7_script.sql)

## Chart
[Chart_Task7](Visualization/Task7.png)

-- ========================================
-- TAPSIRIQ 8: Ödəniş üsullarına görə satış bölgüsü
-- ========================================

## SQL Script
[SQLTask_8](Scripts/Task8_script.sql)

## Chart
[Chart_Task8](Visualization/Task8.png)

-- ========================================
-- TAPSIRIQ 9: Ləğv edilmiş və tamamlanmış sifarişlərin nisbəti
-- ========================================
## SQL Script
[SQLTask_9](Scripts/Task9_script.sql)

-- ========================================
-- TAPSIRIQ 10: Qaytarılma faizi
-- ========================================
SELECT COUNT(CASE WHEN STATUS='Returned' THEN 1 END) AS RETURNED_ORDERS,
       COUNT(ORDER_ID) AS TOTAL_ORDERS,
       (COUNT(CASE WHEN STATUS='Returned' THEN 1 END)/COUNT(ORDER_ID))*100 AS RATIO_RETURN
FROM ORDERS;

## SQL Script
[SQLTask_10](Scripts/Task10_script.sql)

-- ========================================
-- TAPSIRIQ 11: Ən çox qaytarılan məhsul və kateqoriya
-- ========================================

## SQL Script
[SQLTask_11](Scripts/Task11_script.sql)

## Chart
[Chart_Task11](Visualization/Task11.png)

-- ========================================
-- TAPSIRIQ 12: Qaytarılma səbəblərinin payı
-- ========================================

## SQL Script
[SQLTask_12](Scripts/Task12_script.sql)

## Chart
[Chart_Task12](Visualization/Task12.png)

-- ========================================
-- TAPSIRIQ 13: Hər kateqoriyanın orta mənfəət faizi (%)
-- ========================================

## SQL Script
[SQLTask_13](Scripts/Task13_script.sql)

## Chart
[Chart_Task13](Visualization/Task13.png)

-- ========================================
-- TAPSIRIQ 14: Müştəri yaş qruplarına görə satış payı
-- ========================================

## SQL Script
[SQLTask_14](Scripts/Task14_script.sql)

## Chart
[Chart_Task14](Visualization/Task14.png)

-- ========================================
-- TAPSIRIQ 15: 2023 və 2024-cü illər üzrə satış artımı
-- ========================================

## SQL Script
[SQLTask_15](Scripts/Task15_script.sql)

## Chart
[Chart_Task15](Visualization/Task15.png)


## Analitik İcmal və təkliflər
## 1. Hər ay üzrə satış və sifariş sayı (Task 2)

İcmal: Satışlar aylar üzrə dəyişir, bayram və mövsümi kampaniyalar satışları artır.

✅ Təklif: Mövsümə uyğun kampaniyalar və endirimlər planlaşdır.

## 2. Ən çox ziyan verən məhsullar (Task 3)

İcmal: Top 10 ziyan verən məhsul müəyyən edilib.

✅ Təklif: Qiymət strategiyasını yenilə və ya stokunu azald.

## 3. Ən çox gəlir gətirən məhsullar (Task 4)

İcmal: Top 5 məhsul gəlir baxımından liderdir.

✅ Təklif: Trend məhsulların reklamını artır və cross-sell kampaniyaları qur.

## 4. Ən çox alış-veriş edən müştərilər (Task 5)

İcmal: Loyal müştərilər müəyyən edilib.

✅ Təklif: Loyalty proqramları, xüsusi endirim və hədiyyələr tətbiq et.

## 5. Şəhərlər üzrə satış və sifariş sayı (Task 6 & 15)

İcmal: Lənkəran və Sumqayıt artım göstərir, Bakı, Gəncə və Şəki azalma müşahidə olunub.

✅ Təklif: Azalma olan şəhərlərdə regional kampaniyalar və çatdırılma təkmilləşdirilsin; artım olanlarda uğurlu strategiya digər regionlara tətbiq olunsun.

## 6. Endirimlərin təsiri (Task 7)

İcmal: Endirimli məhsullar daha çox sifariş gətirir, amma mənfəəti azalda bilər.

✅ Təklif: Endirim strategiyasını optimallaşdır və yüksək mənfəətli məhsullara fokuslan.

## 7. Ödəniş üsullarına görə satış bölgüsü (Task 8)

İcmal: Müştərilər əsasən kartla ödəniş edir.

✅ Təklif: Alternativ ödəniş üsullarını əlavə et, satış imkanını genişləndir.

## 8. Ləğv və qaytarılma nisbəti (Task 9 & 10)

İcmal: Ləğv və qaytarılma faizi izlənilib.

✅ Təklif: Qaytarılma səbəblərini analiz edərək məhsul keyfiyyətini və təsvirini optimallaşdır.

## 9. Hər kateqoriyanın orta mənfəət faizi (Task 13)

İcmal: Home və Toys kateqoriyaları yüksək mənfəət gətirir; Clothing aşağıdır.

✅ Təklif: Aşağı mənfəətli kateqoriyalarda qiymət strategiyası və məhsul çeşidi yenilənməlidir.

## 10. Müştəri yaş qruplarına görə satış (Task 14)

İcmal: 18–35 yaş qrupu Electronics və Toys alır; 51–69 isə Toys və Home alır.

✅ Təklif: Az satılan kateqoriyalara (məsələn, 18–35 üçün Home) hədəfli kampaniyalar tətbiq et.

## Ümumi Tövsiyələr

## Məhsul və kateqoriya üzrə prioritet strategiyalar qurmaq.

## Regional marketinq və mövsüm kampaniyaları tətbiq etmək.

## Endirim və qiymət strategiyası optimallaşdır; aşağı mənfəətli məhsulları diqqətlə idarə etmək.

## Loyal müştərilərə fokuslan, qaytarılma səbəblərini azalt və ödəniş üsullarını artırmaq.