create view view1 as
select count(question.id),survey.active,survey.start_date,servey.end_date,count(),count()
from survey,question,ticket,passenger
where((question INNER JOIN ticket)INNER JOIN passenger)
