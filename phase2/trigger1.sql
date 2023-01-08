create trigger trg1
	before update
	on survey
	referencing old as osv,new as nsv
	for each row
	when(nsv.start_data < osv.end_date
		SIGNAL.SQL state '7005' ('cannot change date')
	);
	
	
create trigger trg2
	before update
	on survey
	referencing new as nsv
	for each row
	when(nsv.start_data > nsv.end_date
		SIGNAL.SQL state '7005' ('cannot change date')
	);
	
create trigger trg3
	before insert
	on survey
	referencing new as nsv
	for each row
	when(nsv.start_data > nsv.end_date
		SIGNAL.SQL state '7005' ('cannot add')
	);


	
create trigger trg4
	before insert
	on survey
	referencing old as osv,new as nsv
	for each row
	when(nsv.start_data < osv.end_date
		SIGNAL.SQL state '7005' ('cannot add')
	);
