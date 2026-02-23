-- ============================================
-- Diabetes Readmissions Analysis (SQL)
-- Table/View: diabetes_clean
-- ============================================

-- 01) Readmission value sanity check (clean)
SELECT LOWER(TRIM(readmitted)) AS readmitted_clean, COUNT(*)
FROM hospital_readmissions1
GROUP BY readmitted_clean;

-- 02) Overall readmission rate (baseline)
SELECT
  COUNT(*) AS total_encounters,
  SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) AS total_readmitted,
  ROUND(100.0 * SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmit_rate_pct
FROM diabetes_clean;

-- 03) Readmission by age
SELECT
  age,
  COUNT(*) AS total,
  SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) AS readmitted,
  ROUND(100.0 * SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmit_rate_pct
FROM diabetes_clean
GROUP BY age
ORDER BY age;

-- 04) Readmission by prior inpatient visits (bucketed)
SELECT
  CASE
    WHEN n_inpatient = 0 THEN '0 prior'
    WHEN n_inpatient BETWEEN 1 AND 2 THEN '1-2 prior'
    WHEN n_inpatient BETWEEN 3 AND 5 THEN '3-5 prior'
    ELSE '6+ prior'
  END AS inpatient_bucket,
  COUNT(*) AS total,
  SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) AS readmitted,
  ROUND(100.0 * SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmit_rate_pct
FROM diabetes_clean
GROUP BY inpatient_bucket
ORDER BY inpatient_bucket;

-- 05) Readmission by length of stay
SELECT
  time_in_hospital,
  COUNT(*) AS total,
  ROUND(100.0 * SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmit_rate_pct
FROM diabetes_clean
GROUP BY time_in_hospital
ORDER BY time_in_hospital;

-- 06) Readmission by medication change
SELECT
  change,
  COUNT(*) AS total,
  ROUND(100.0 * SUM(CASE WHEN readmitted_clean = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmit_rate_pct
FROM diabetes_clean
GROUP BY change;
