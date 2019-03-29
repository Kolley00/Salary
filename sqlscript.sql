REM   Script: Salary
REM   Salary

create table salary ( EmployeeID char(11)primary key not null,EmpName varchar(30)not null,  
DateOfBirth varchar(30)not null, Address varchar(30)not null, CityName varchar(30)not null, GrossSalary number(30,2)not null, TAX number (30,2),  
Pension number(30,2), NetSalary number(30,2));

alter table salary add ZIP number(30,2)not null;

alter table salary add StreetName varchar(20)not null;

alter table salary add HouseNumber number(30,2)not null;

alter table salary drop column Address;

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('01045642895', 'Sandro', '01-Jan-00', 'Tbilisi', 3000, 0222, 'Marjanishvili', 52);

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('01039462345', 'Victor', '01-Jan-01', 'Khashuri',40000, 0333,'Didube', 119);

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('00105046245', 'Andrew', '10-Feb-00', 'Khashuri',300, 0444, 'Sanzona', 2);

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('01045839787', 'Gio', '01-Dec-01', 'Batumi', 1000, 0555, 'Varketili', 9);

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('01034754983', 'Vano', '08-May-04', 'Tbilisi', 1500 , 0666, 'Gldani', 4);

insert into salary ( EmployeeID, EmpName, DateOfBirth, CityName, GrossSalary, ZIP, StreetName, HouseNumber)  
values ('01030046241', 'Andrew', '12-Oct-00', 'Batumi', 100, 0111, 'Wereteli', 17);

update salary set TAX = GrossSalary * 0.3 where GrossSalary > 5000;

update salary set TAX = GrossSalary * 0.2 where GrossSalary < 5000 and GrossSalary > 2000;

update salary set TAX = GrossSalary * 0.1 where GrossSalary < 2000 and GrossSalary > 500;

update salary set TAX = GrossSalary * 0 where GrossSalary < 500;

update salary set Pension = GrossSalary * 0.02;

update salary set NetSalary = GrossSalary - Tax - Pension;

select * from salary;

select * from salary where GrossSalary - NetSalary > 500 and CityName = 'Khashuri' or GrossSalary - NetSalary < 145 and CityName = 'Khashuri';

