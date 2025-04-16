-- PMPM Cost Model
-- Calculates per member per month costs by plan and risk group

WITH monthly_costs AS (
    SELECT
        member_id,
        plan_id,
        EXTRACT(YEAR FROM claim_date) AS year,
        EXTRACT(MONTH FROM claim_date) AS month,
        SUM(allowed_amount) AS total_cost
    FROM claims_data
    GROUP BY member_id, plan_id, year, month
),
member_counts AS (
    SELECT
        plan_id,
        year,
        month,
        COUNT(DISTINCT member_id) AS members
    FROM monthly_costs
    GROUP BY plan_id, year, month
)
SELECT
    c.plan_id,
    c.year,
    c.month,
    ROUND(SUM(c.total_cost) / m.members, 2) AS pmpm
FROM monthly_costs c
JOIN member_counts m
  ON c.plan_id = m.plan_id AND c.year = m.year AND c.month = m.month
GROUP BY c.plan_id, c.year, c.month, m.members
ORDER BY c.plan_id, c.year, c.month;
