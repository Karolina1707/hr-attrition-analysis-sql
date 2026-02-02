-- ===============================
-- HR ATTRITION – BASIC EXPLORATION
-- ===============================

-- 1. Liczba pracowników, którzy odeszli
SELECT COUNT(1) AS leavers
FROM zatrudnienie
WHERE Attrition = 'Yes';

-- 2. Całkowity procent rotacji
SELECT
  100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS attrition_pct
FROM zatrudnienie;

-- 3. Średnie wynagrodzenie vs odejście
SELECT
  Attrition,
  AVG(MonthlyIncome) AS avg_income
FROM zatrudnienie
GROUP BY Attrition;

-- 4. Procent rotacji wg działu
SELECT
  Department,
  100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS attrition_pct
FROM zatrudnienie
GROUP BY Department
ORDER BY attrition_pct DESC;

-- 5. Udział działów wśród wszystkich odchodzących
SELECT
  Department,
  100.0 * COUNT(*) / (
    SELECT COUNT(*)
    FROM zatrudnienie
    WHERE TRIM(Attrition) = 'Yes'
  ) AS share_of_leavers_pct,
  COUNT(*) AS leavers_n
FROM zatrudnienie
WHERE TRIM(Attrition) = 'Yes'
GROUP BY Department
ORDER BY share_of_leavers_pct DESC;

-- 6. Wynagrodzenia wg działu i statusu odejścia
SELECT
  Department,
  Attrition,
  AVG(MonthlyIncome) AS avg_income
FROM zatrudnienie
GROUP BY Department, Attrition
ORDER BY Department, Attrition;
