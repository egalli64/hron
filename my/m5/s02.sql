-- examples on insert
use hron;

-- check the current table status
describe service;

select s.*, l.city
from service s left outer join location l
using (location_id);

-- plain insert
insert into service (service_id, name, location_id) values
	(202, 'Mayday Shifty Solutions', 2);

-- multiline insert
insert into service (service_id, name, location_id) values
	(21, 'Old Gondor Raw Equipment', 3),
	(22, 'Rohan Leather', 4);

-- nullable column could be skipped
insert into service (service_id, name) values
	(23, 'Kerr & Reetch Associates');

-- auto-incremented value for pk
insert into service (name) values
	('Multiple Oz Factories');

-- insert relying on column definition on table
insert into service
	values (26, 'Rainydays Carwash', null);
