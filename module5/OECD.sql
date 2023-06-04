SELECT * 
FROM OECD.`monde (1)`;

EXPLAIN SELECT * 
FROM OECD.`monde (1)`
WHERE Country='France';

#function 1: Group by
#show the table with selected Euro-using countries with measures. 
SELECT * 
FROM OECD.`monde (1)`
GROUP BY Country;

#total generations
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='TOT';

#average values for total generations (young and old)
SELECT avg('values')
from (select *
FROM OECD.`monde (1)`
group by Age='TOT' 
limit 5) summary;

# function 2: Order by
#working-aging generations
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
ORDER BY Country;

#old generations
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD';

# function 3: UNION
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
UNION
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA';

#(1) measure: GINI
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='GINI';

#GROUP FUNCTIONS: MAX(4), MIN(5), AVG(6), SUM(7), COUNT(7)
SELECT MAX('values') as max,
MIN('values') as min,
AVG('values') as average,
SUM('values') as total,
COUNT('values') as NUM_columns
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='GINI';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='GINI'
ORDER by Measure='GINI' desc
limit 5 ;

# (2) measure: CPI2010
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='CPI2010';

# (3) measure: Total Earning (ECTOTAL)
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='ECTOTAL';

# (4) measure: taxes and security contributions paid directly by households (TACTOTAL)
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='TACTOTAL';

# (5) measure: Current transfers received from employment-related social insurance schemes (Current prices)
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='TRRERCTOTAL';

# (6) measure: Capital income 
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='KICTOTAL';

# (7) Mean disposable income
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='INCCTOTAL';

# (8) P90/P10 disposable income decile ratio
SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='P90P10';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='WA'
and Measure='P90P10'
ORDER by Measure='GINI' desc
limit 5 ;

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='ECTOTAL';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='TACTOTAL';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='TRRERCTOTAL';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='KICTOTAL';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='INCCTOTAL';

SELECT * 
FROM OECD.`monde (1)`
WHERE Age='OLD'
and Measure='P90P10';

