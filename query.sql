select jeda.name,count(padawa.jedi_id) as "padavan_count"
	from jedi jeda
		left join padawan padawa on padawa.jedi_id=jeda.id
			group by padawa.jedi_id  ORDER BY padavan_count DESC