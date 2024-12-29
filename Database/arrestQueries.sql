-- Display Table
SELECT * FROM UCSB_Crime_Fire_Log ucfl;

-- 
SELECT COUNT(*) AS cc, Classification FROM UCSB_Crime_Fire_Log ucfl WHERE Disposition LIKE 'Arrest%' GROUP BY Classification;

SELECT Location || ", Isla Vista, CA" as address FROM UCSB_Crime_Fire_Log ucfl WHERE Disposition LIKE "Arrest%"
