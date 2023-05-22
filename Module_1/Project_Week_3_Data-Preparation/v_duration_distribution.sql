SELECT 1 as slice, 'less 50' as bounds,count(*) as Elmt, SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration <= 50
UNION
SELECT 2, '50-100', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 50 AND duration <= 100
UNION
SELECT 3, '100-150', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 100 AND duration <= 150
UNION
SELECT 4, '150-200', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 150 AND duration <= 200
UNION
SELECT 5, '200-300', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 200 AND duration <= 300
UNION
SELECT 6, '300-400', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 300 AND duration <= 400
UNION
SELECT 7, '400-500', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 400 AND duration <= 500
UNION
SELECT 8, '500-600', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 500 AND duration <= 600
UNION
SELECT 9, '600-700', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 600 AND duration <= 700
UNION
SELECT 10, '700-800', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 700 AND duration <= 800
UNION
SELECT 11, '800-900', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 800 AND duration <= 900
UNION
SELECT 12, '900-1000', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 900 AND duration <= 1000
UNION
SELECT 9, '1000-', count(*), SUM(b_deposit = 1)/count(*)*100  AS deposit_rate
FROM bank_deposit_clean_p WHERE duration > 1000;

