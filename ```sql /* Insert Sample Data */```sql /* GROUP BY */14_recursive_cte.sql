```sql
/*
RECURSIVE CTE
*/


-- Display category hierarchy

WITH RECURSIVE category_tree AS(

SELECT

category_id,

category_name,

parent_category_id,

1 AS level

FROM categories

WHERE parent_category_id IS NULL


UNION ALL


SELECT

c.category_id,

c.category_name,

c.parent_category_id,

ct.level+1

FROM categories c

INNER JOIN category_tree ct

ON c.parent_category_id=
ct.category_id

)

SELECT *
FROM category_tree;




-- Employee reporting hierarchy

WITH RECURSIVE employee_tree AS(

SELECT

employee_id,

employee_name,

manager_id,

1 AS level

FROM employees

WHERE manager_id IS NULL


UNION ALL


SELECT

e.employee_id,

e.employee_name,

e.manager_id,

et.level+1

FROM employees e

INNER JOIN employee_tree et

ON e.manager_id=
et.employee_id

)

SELECT *
FROM employee_tree;




-- Generate category depth

WITH RECURSIVE depth AS(

SELECT

category_id,

parent_category_id,

1 AS depth

FROM categories

WHERE parent_category_id IS NULL


UNION ALL


SELECT

c.category_id,

c.parent_category_id,

d.depth+1

FROM categories c

INNER JOIN depth d

ON c.parent_category_id=
d.category_id

)

SELECT *
FROM depth;



/*
WITH RECURSIVE
=
parent → child

UNION ALL
=
combine levels
*/
```
