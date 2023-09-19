/*Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 
 */
 
SELECT * FROM staff
ORDER BY salary ASC

SELECT * FROM staff
ORDER BY salary DESC

/* Выведите 5 максимальных заработных плат (saraly)
 */
SELECT salary FROM staff LIMIT 5


/* Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
*/

SELECT post, SUM(salary) FROM staff 
GROUP BY post

/*  
Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
*/

SELECT COUNT(*) FROM staff
WHERE post = "Рабочий" AND age BETWEEN 24 AND 49

/*
Найдите количество специальностей
*/
SELECT COUNT(DISTINCT post) FROM  staff

/*
Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
 */
 
SELECT post FROM staff
GROUP BY post
HAVING AVG(age) <=30;