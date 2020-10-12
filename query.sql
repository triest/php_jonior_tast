use jedais;

select jeda.name,count(padawa.jedi_id)
	from jedi jeda
		left join padawan padawa on padawa.jedi_id=jeda.id
			group by padawa.jedi_id