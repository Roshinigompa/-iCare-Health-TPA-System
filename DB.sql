create database iCareTPADB;
 use iCareTPADB;

create table Insurers(
	InsureId int primary key identity(1000,1),
	InsurerName varchar(30) not null,
	RegistrationNo int unique,
	HeadOffice varchar(80) not null
	);

create table Hospitals(
	HospitalId int primary key identity(2000,1), 
	HospitalName varchar(20) not null,
	Address varchar(30) not null,
	City varchar(20) not null,
	State varchar(20) not null,
	Pincode int not null,
	InsurerId int not null references Insurers(InsureId)
	);

create table Users(
	UserId int primary key identity(3000,1),
	FirstName varchar(20) not null,
	LastName varchar(20) not null,
	EmailId varchar(20) not null unique,
	Password varchar(20) not null,
);



Insert into Users (FirstName,LastName,EmailId,Password) values('vineeth','rekha','vineeth.rekha@gmail.com','vinni123');
Insert into Users (FirstName,LastName,EmailId,Password) values('Kishore','Banu','kk@gmail.com','kish123');
Insert into Users (FirstName,LastName,EmailId,Password) values('krishna','Kumar','krish@gmail.com','kk123');


Insert into Insurers (InsurerName,RegistrationNo,HeadOffice) values('HDFC',1234,'Chennai');
Insert into Insurers (InsurerName,RegistrationNo,HeadOffice) values('AXIS',1235,'Banglore');

Insert into Hospitals (HospitalName,Address,City,State,Pincode,InsurerId) values('Global Hospital','Chengalpatu','Chengalpatu','Tamil Nadu',600042,1000);
Insert into Hospitals (HospitalName,Address,City,State,Pincode,InsurerId) values('Appolo Hospital','waynland','waynland','Banglore',500042,1001);


CREATE PROCEDURE stpFindHospitalByPincode 
@pincode int
as
begin
select * from Hospitals where Pincode=@pincode
end;

