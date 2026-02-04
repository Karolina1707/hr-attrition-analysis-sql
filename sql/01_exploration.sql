-- HR ATTRITION – BASIC EXPLORATION

-- 1. Liczba pracowników, którzy odeszli
-- Number of employees who left
SELECT COUNT(1) AS leavers
FROM zatrudnienie
WHERE Attrition = 'Yes';

-- 2. Całkowity procent rotacji
-- Total turnover rate
SELECT
  100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS attrition_pct
FROM zatrudnienie;

-- 3. Średnie wynagrodzenie vs odejście
-- Average salary vs. attrition
SELECT
  Attrition,
  AVG(MonthlyIncome) AS avg_income
FROM zatrudnienie
GROUP BY Attrition;

-- 4. Procent rotacji wg działu
-- Percentage of turnover by department
SELECT
  Department,
  100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS attrition_pct
FROM zatrudnienie
GROUP BY Department
ORDER BY attrition_pct DESC;

-- 5. Udział działów wśród wszystkich odchodzących
--  Share of departments among all departures
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
-- Remuneration by department and departure status
SELECT
  Department,
  Attrition,
  AVG(MonthlyIncome) AS avg_income
FROM zatrudnienie
GROUP BY Department, Attrition
ORDER BY Department, Attrition;
