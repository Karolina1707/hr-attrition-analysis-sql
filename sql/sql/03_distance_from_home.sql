-- =========================================
-- HR ATTRITION – DISTANCE FROM HOME ANALYSIS
-- =========================================

-- 1. Średnia odległość od pracy vs odejście
SELECT
  Attrition,
  COUNT(*) AS employees_n,
  AVG(DistanceFromHome) AS avg_distance
FROM zatrudnienie
GROUP BY Attrition;

-- 2. Grupowanie odległości a rotacja
SELECT
  Attrition,
  CASE
    WHEN DistanceFromHome <= 5 THEN '0–5 km'
    WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6–15 km'
    WHEN DistanceFromHome BETWEEN 16 AND 25 THEN '16–25 km'
    ELSE '25+ km'
  END AS distance_group,
  COUNT(*) AS employees_n
FROM zatrudnienie
GROUP BY
  Attrition,
  distance_group
ORDER BY
  Attrition,
  distance_group;
