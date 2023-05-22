use project_02;

-- drop table fr_eur_enrol;

create table fr_eur_enrol -- enrolment in pre-primary education
(select series_code, series, country_code, `1991` as value, `1991` as year
from france_euro
where series_code = 'SE.PRE.ENRL'

union all

select series_code, series, country_code, `1992` as value, `1992` as year
from france_euro
where series_code = 'SE.PRE.ENRL'
)
;

-- drop table d_data;

create table d_data -- enrolment in pre-primary education
(select series_code, country_code, `1991` as value, `1991` as year
from diverse_data
where series_code = 'SE.SCH.LIFE.FE'
and country_code = 'EMU'

union all

select series_code, country_code, `1992` as value, `1992` as year
from diverse_data
where series_code = 'SE.SCH.LIFE.FE'
and country_code = 'EMU'
)
;


SELECT AVG(f.value + d.value) 
FROM 
(fr_eur_enrol AS f 
JOIN d_data AS d 
ON f.value = d.value); -- replace with the appropriate join condition


select * from d_data;

select d_data.value + d_data.year as result -- column + column
from d_data;


-- sum(x) taking colmun X and aggregates all the rows into one value

select avg(d_data.value) from d_data;













