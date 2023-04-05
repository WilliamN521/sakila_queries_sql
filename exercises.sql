-- 1.- Films available in French
select * 
from Film fl, language la
where fl.language_id = la.language_id
and la.name = 'French';

-- 2.- Actors who have participated in Sports movies
select distinct ac.first_name, ac.last_name
from film fi, film_category fc, category ca, film_actor fa, actor ac
where fi.film_id = fa.film_id
and fa.actor_id = ac.actor_id
and fi.film_id = fc.film_id
and fc.category_id = ca.category_id
and ca.name = 'Sports';