CREATE OR REPLACE FUNCTION VALIDE_CPF 
(p_cof  IN CHAR)
RETURN NUMBER 
I5 
m_total NUMBER :=  0; 
m_digite NUMBER := 0; 
BEGIN 

FOR i IN 1..9 LOOP 
m_total := m_total + substra(p_cpf, i, 1) * (11 - i);
END LOOP; 

m_digite := 11 - mod(m_total, 11); 
IF m_digite > 9 THEN 
m_digite := 0; 
END IF; 

IF m_digite != substra(p_cpf, 10, 1) THEN 
RETURN 0; 
END IF; 

m_digite :=0;


//
select * from user_objects 
// all object in this user, create a lot of math sentences
Package 

new package 
name 
pkg_example 

create or replace package pkg_example is 

//you can delete this part
--Author : POP 
-- Created : 26/01/2022 22:23 PM 
-- Purpose: 
//you can delete this one 

function fc_add_values(p1 number, p2 number) return number; 
procedure pr_insere_employee(pName varcha2(100), pSurveyName varchar2(100), pResult out varchar2(100)); 

end pkg_example; 

//body and specification, interface with public methods, and inside this one you have the private 
// you have some procedure inside, and acess on this package 
//for example (varchar2 oracle version 8)

create or replace package pkg_example is 
function fc_add_values(p1 number, p2 number)
is
begin
return p1 +p2; 

end; 


function fc_compute_values(p1 number, operation number) return number; 
is 
begin 

end; 
procedure pr_insere_employee(pName varcha2, pSurveyName varchar2, pResult out varchar2; 

end pkg_example; 


//example 2:

create or replace package pkg_example is 
function fc_add_values(p1 number, p2 number)
is
begin 
return p1 +p2; 



function fc_multiple_values(p1 number, p2 number)
is
begin
return p1 * p2; 

end; 


function fc_computa_values(p1 number, operation number) return number; 
is 
begin 
if operation = 1 then 
return fc_add_values(p1,p2); 
else 
return fc_multiple_values(p1,p2)
end if; 


end; 
procedure pr_insere_employee(pName varchar2, pSurveyName varchar2, pResult out varchar2
is 
begin 
pResult := pName|| ''|| pSurveyName  //to concatenated on oracle use pipepipe || 
end; 

end pkg_example; 


// procedure 

CREATE OR REPLACE PACKAGE  pkg_example IS 

fc_computa_values (p1 NUMBER 
, p2 NUMBER
, operation NUMBER) return number ; 

PROCEDURE pr_insert_employee(pName  VARCHAR2, 
pSurveyName VARCHAR2,
pResult OUT VARCHAR2);

END pkg_example; 

//the package is: fc_computa_values ; fc_multiple_values ; fc_add_values ; pr_insert_employees 

CREATE OR REPLACE PACKAGE BODY pkg_example IS 
FUNCTION fc_add_values(p1 NUMBER, p2 NUMBER) return number IS 
BEGIN 
RETURN p1 + p2; 

END 
FUNCTION fc_multiple_values(p1 NUMBER, p2 NUMBER) return number IS 
BEGIN 
RETURN p1 * p2; 

END; 
FUNCTION fc_compute_values(p1 NUMBER, p2 NUMBER, operation NUMBER)
RETURN NUMBER IS 
BEGIN 
IF operation = 1 THEN 
RETURN fc_add_values(p1
, p2); 

ELSE 
RETURN fc_multiple_values(p1
, p2); 

END IF; 

END; 

//just exposed two parts, but only one from my pckg 

CREATE OR REPLACE PACKAGE pkg_example IS 

function fc_compute_values(p1 NUMBER 
, p2 NUMBER 
, operation NUMBER) return number; 
PROCEDURE pr_insert_employee(pName VARCHAR2, 
pSurveyName VARCHAR2, 
pResult OUTVARCHAR2); 

END pkg_example; 


//execute 

begin 
-- Call the function 
: result := pkg_example.fc_compute_values(p1 => :p1, 
p2 => :p2, 
operation => :operation); 

end; 

Variable   Type Value 
result     Float  20 
p1         Float 10 
p2         Float 10 
operation  Float 1

// package 
CREATE OR REPLACE PACKAGE BODY pkg_example IS 
FUNCTION fc_add_values(p1 NUMBER, p2 NUMBER) return number IS 
BEGIN 
RETURN p1 + p2; 

END 
FUNCTION fc_multiple_values(p1 NUMBER, p2 NUMBER) return number IS 
BEGIN 
RETURN p1 * p2; 


END; 
FUCTION fc_compute_values(p1 NUMBER, p2 NUMBER, operation NUMBER)
RETURN NUMBER IS 
BEGIN 
IF operation = 1 THEN 
RETURN fc_soma_values(p1 
, p2 ); 

ELSE 
RETURN fc_multiple_values(p1
, p2); 

END IF; 
END; 


/// using the procedure. N parameter to output, if you have a lot of
//function can used by select (ex 4)
begin 
-- Call the procedure 
pkg_example.pr_insert_employee(pName => :pName,
pSurveyName => :pSurveyName,
pResult => :pResult);
end; 

// 
CREATE OR REPLACE PACKAGE pkg_example IS 

function fc_compute_values(p1 NUMBER   //change this line in all pkg 
,p2 NUMBER, 
,operation NUMBER) return number; 
 PROCEDURE pr_insert_employee(pName
VARCHAR2,
pSurveyName
VARCHAR2
, pResult OUT 
VARCHAR2); 

END pkg_example; 
 

 //compute, multiple, insert, add 
 //execute function test

 begin

// function: example 4

select pkg_example.fc_compute_values(p1 => 10, 
p2 => 20, 
operation => :operation); 

end; 
select * from jobs 
select j *, pkg_example.fc_compute_values(min_salary, mac_salary,1) from            j 

SELECT j *
, pkg_example.fc_compute_values(min_salary
, max_salary
,1)

FROM jobs j 
where 
pkg_example.fc_compute_values(min_salary
, max_salary
, 1) < 10000

//execute and filter the table 
//function and procedure not
// procedure you have more then 2 with alt 


