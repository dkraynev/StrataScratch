-- MySQL

-- #801. Salaries Differences --
-- https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3
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


-- #802.
-- #803.
-- #804.

-- #805.

-- #806.

-- #807.

-- #808.

-- #809.

-- #810.

-- #811.

-- #802.

-- #802.

-- #802.

-- #802.

-- #802.

-- #802.

-- #802.

-- #802.


-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.-- #801.