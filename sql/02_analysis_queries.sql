
with hotels as (
SELECT * FROM DBO.['2018$']
union
SELECT * FROM DBO.['2019$']
union
SELECT * FROM DBO.['2020$'])

SELECT * from hotels
JOIN market_segment$ 
ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN
DBO.meal_cost$ 
ON meal_cost$.meal = hotels.meal
