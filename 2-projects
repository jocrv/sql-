select * from jobs 
select employees_seq.nextval from dual; 

select * from dual 

insert into employees 
(employee_id, 
    first_name, last_name
    , email
    , phone_number
    , hire_date
    , job_id
    , salary
    , commision_pct
    , managerid
    , department_id
    , cpf) 
values( null
, 'Luis'
, 'Antonio'
, 'luisant@gmail.com'
, '1122334455'
, to_dato('26/07/1997'
, 'dd/mm/yyyy') 
'DIG_LEADER'
, 11000, null
, null
, 11
, 22334455 


// execute, run
// execute the sql ansi 
// hold back the transaction change the cpf 

select * from jobs 
select employees_seq.nextval from dual; 

select * from dual 

insert into employees 
(employee_id, 
    first_name, last_name
    , email
    , phone_number
    , hire_date
    , job_id
    , salary
    , commision_pct
    , managerid
    , department_id
    , cpf) 
values( null
, 'Luis'
, 'Antonio'
, 'luisant@gmail.com'
, '1122334455'
, to_dato('26/07/1997'
, 'dd/mm/yyyy') 
'DIG_LEADER'
, 11000, null
, null
, 11
, 22334455 


v_validation_cpf  NUMBER; 
BEGIN 
SELECT COUNT(1)
INTO v_count
FROM departments d 
INNER JOIN locations l 
ON l.location_id = d.location_id 
WHERE d.department_id = :new.department_id 
AND l.country_id = 'BR'; 

IF v_count > 0 THEN
BEGIN 
v_validation_cpf := valida_capf(:new.cpf); 

IF v_validation_cpf = 0 THEN 
raise_application_error( -20001, 'CPF invalid'); 

END IF; 
EXCEPTION 
WHEN OTHERS THEN
raise_application_error(-20002, 'Erro to validate CPF -> '||sqlerrm); 

END; 
END IF; 
END tr_b_er_iu_employees; 

// auditory, direction the directions
//triggers, auditory, log, validate the direction 

//sql and autocommit, thats just the confirm the transition, because of this is more dangerous because the, for example: 

select * from world_cities 
select count(1) from world_cities; 
delete from world_cities;
//hold back this on
// now you delete every data 

