WITH opportunity_count AS (
    SELECT company_name, COUNT(opportunityid) AS opportunity_count
    FROM account AS acc
    LEFT JOIN opportunity AS opp
        ON acc.accountid = opp.accountid
    GROUP BY company_name
),

reps_status AS (
    SELECT
        sr.sales_rep_id,
        sr.rep_name,
        sr.quota,
        sr.region           AS rep_region,
        sr.state            AS rep_state,
        sr.sales_manager,
        sr.hire_date,
        sr.active_flag,
        DATE_PART('year', AGE(sr.hire_date)) AS years_tenured,
        CASE 
            WHEN DATE_PART('year', AGE(sr.hire_date)) < 2 THEN 'Junior'
            WHEN DATE_PART('year', AGE(sr.hire_date)) < 5 THEN 'Mid'
            WHEN DATE_PART('year', AGE(sr.hire_date)) >= 5 THEN 'Senior'
        END AS seniority_tier
    FROM sales_reps AS sr
)

SELECT
    rs.rep_name,
    rs.sales_rep_id,
    rs.quota,
    rs.rep_region,
    rs.rep_state,
    rs.sales_manager,
    rs.hire_date,
    rs.active_flag,
    rs.years_tenured,
    rs.seniority_tier,
    opp.opportunityid,
    opp.close_date,
    opp.revenue,
    opp.discount_pct,
    opp.category,
    opp.region              AS opp_region,
    opp.number_of_licenses  AS opp_license_count,
    acc.number_of_licenses  AS acc_license_count,
    opp.deal_type,
    opp.deal_stage,
    CASE 
        WHEN opp.discount_pct > .20 THEN 'red'
        WHEN opp.discount_pct <= .20 THEN 'green'
    END AS discount_flag,
    product.product_name,
    product.productid,
    acc.company_name,
    acc.state,
    CASE 
        WHEN opportunity_count.opportunity_count = 1 THEN 'New'
        WHEN opportunity_count.opportunity_count > 1 THEN 'Returning'
    END AS customer_status

FROM opportunity AS opp
LEFT JOIN reps_status AS rs
    ON rs.sales_rep_id = opp.sales_rep_id
LEFT JOIN product
    ON opp.productid = product.productid
LEFT JOIN account AS acc
    ON opp.accountid = acc.accountid
LEFT JOIN opportunity_count
    ON acc.company_name = opportunity_count.company_name

WHERE opp.close_date BETWEEN '2025-01-01' AND '2026-12-31'
--AND opp.deal_stage LIKE '%Won%'
ORDER BY rs.rep_name ASC