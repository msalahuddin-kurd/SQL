Select A_numb as 'FROM', 
count ( B_numb) as 'org',
count (dist (b_numb)) as 'unique_org',
count (dist (b_numb)) / count ( B_numb) as 'Deviation',
from off_details
where ref_point = 'off_num'
and service_direction  = 'in'




Select A_numb as 'FROM', 
count ( B_numb) as 'org',
count (dist (b_numb)) as 'unique_org',
count (dist (b_numb)) / count ( B_numb) as 'out_Deviation',
from dtl_onnum
where ref_point = 'on_num'
and service_direction  = 'out'
union 
Select 
count ( B_numb) as 'term',
count (dist (b_numb)) as 'unique_term',
count (dist (b_numb)) / count ( B_numb) as 'in_Deviation',
from dtl_onnum
where ref_point = 'on_num'
and service_direction  = 'in'
union
Select 
count ( B_numb) as 'org',
count (dist (b_numb)) as 'unique_org',
count (dist (b_numb)) / count ( B_numb) as 'int_Deviation',
from dtl_int
where ref_point = 'on_num'
and service_direction  = 'int'
group by A_numb