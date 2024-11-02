Salaries Differences
https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.

-- MySQL
WITH Max_salaries AS(
SELECT
    department_id,
    MAX(salary) max_salary
FROM
    db_employee E
    JOIN
        db_dept D
    ON E.department_id = D.id
WHERE
    department = 'marketing' OR department = 'engineering'
GROUP BY
    department_id
)

SELECT
    MAX(max_salary) - MIN(max_salary)
FROM
    Max_salaries;
