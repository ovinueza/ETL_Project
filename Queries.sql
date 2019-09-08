-----Check data---
Select * From fuel_types;
Select * From vehicles_data;
Select * From vehicle_types;

----Sum of all Electric vehicles after 2010----
Select SUM(vehicles_count) From vehicles_data 
Where fuel_code = 'EVC' and data_year > 2010;

----All the vehicles supplied until the last year of data per fuel type-----
Select f.fuel_name, Max(vd.data_year), SUM (vd.vehicles_count)vehicle_sum
From vehicles_data as vd
Inner Join fuel_types As f On
vd.fuel_code = f.fuel_code
Group by f.fuel_name;

----Sum of all the vehicles supplied after 2010 per fuel type----- or a given year by changing > to = ---------
Select f.fuel_name, SUM (vd.vehicles_count)vehicle_sum
From vehicles_data as vd
Inner Join fuel_types As f On
vd.fuel_code = f.fuel_code
Where vd.data_year > 2010
Group by f.fuel_name;


-----Vehicle type and fuel type by weight_class------
Select f.fuel_name, vt.type_name, vd.weight_class, count(vd.vehicles_count)
From vehicles_data as vd
Inner Join fuel_types AS f on
vd.fuel_code = f.fuel_code
Inner Join vehicle_types AS vt on
vd.vehicle_type_id = vt.type_id
Group by f.fuel_name, vt.type_name, vd.weight_class
Order by weight_class ASC;


