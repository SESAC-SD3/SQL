USE world;

-- 서울 인구
SELECT Population FROM city WHERE Name = 'SEOUL';

-- 서울 인구보다 많은 도시
SELECT
	*
FROM city
WHERE Population > (SELECT Population FROM city WHERE Name = 'SEOUL');




SELECT
	Name, Population
FROM country
WHERE Population > (SELECT AVG(Population) FROM country)
ORDER BY Population DESC;





SELECT Code FROM country WHERE Continent = 'Asia';

SELECT
	Name, CountryCode, Population
FROM city
WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia');


SELECT DISTINCT CountryCode FROM city;

SELECT
	*
FROM country
WHERE Code NOT IN (SELECT DISTINCT CountryCode FROM city);





SELECT *
FROM (
	SELECT Continent, COUNT(*) AS co_count
    FROM country 
    GROUP BY Continent
) AS continent_table
WHERE co_count > 40;

-- 평균 대여료(`rental_rate`)보다 비싼 영화를 조회하세요.
-- - 영화 제목, 대여료. 대여료 내림차순 정렬
-- - 상위 10개

-- 'Action' 카테고리에 속한 영화를 조회하세요.
-- - 영화 제목

-- 대여 기록이 있는 고객만 조회하세요.
-- - 고객 이름 (first_name, last_name), 이메일

-- 고객별 대여 횟수를 구한 뒤, 대여 횟수가 30회 이상인 고객만 조회하세요.
-- - 고객 이름, 대여 횟수, 대여 횟수 내림차순


