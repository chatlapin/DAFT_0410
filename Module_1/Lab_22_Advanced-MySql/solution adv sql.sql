select royalty_calc.au_id, round(sum(royalty_calc.sales_royalty) + royalty_calc.advance, 2) profit
from (
select ta.au_id, ta.title_id, t.advance, t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) sales_royalty
from titleauthor ta
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id) royalty_calc
group by royalty_calc.title_id, royalty_calc.au_id
order by profit desc
limit 3;