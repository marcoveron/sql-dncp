-- exercise: Produce a list of all members, along with their recommender, using no joins.
SELECT  DISTINCT mem.firstname || ' ' || mem.surname as member, 
		(SELECT re.firstname || ' ' || re.surname FROM cd.members re WHERE re.memid = mem.recommendedby) 
		as recommender 
			FROM cd.members mem 
		ORDER BY member;

