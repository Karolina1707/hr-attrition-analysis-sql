-- ==================================
-- HR ATTRITION – AGE DEEP DIVE
-- ==================================

-- 1. Podstawowe statystyki wieku vs odejście
SELECT
  Attrition,
  COUNT(*) AS employees_n,
  AVG(Age) AS avg_age,
  MIN(Age) AS min_age,
  MAX(Age) AS max_age
FROM zatrudnienie
GROUP BY Attrition;

-- 2. Struktura wiekowa wg działu i odejścia
SELECT
  Department,
  Attrition,
  COUNT(*) AS employees_n,
  CASE
    WHEN Age < 30 THEN 'Below 30'
    WHEN Age BETWEEN 30 AND 39 THEN '30-39'
    WHEN Age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
  END AS age_group
FROM zatrudnienie
GROUP BY
  Department,
  Attrition,
  age_group
ORDER BY
  Department,
  Attrition,
  age_group;
