# iCare-Health-TPA-System 

## Description:
This project is a health TPA (Third Party Administrator) system designed to manage health insurance-related activities, including information about insurers, hospitals, and users.

## Database Structure:

The system utilizes SQL Server and includes three main tables: Insurers, Hospitals, and Users.
The Insurers table stores information about insurance companies, including their unique identifier (InsureId), name, registration number, and head office location.
The Hospitals table contains details about hospitals, such as their unique identifier (HospitalId), name, address, city, state, pin code, and the corresponding insurer's identifier (InsurerId).
The Users table stores user information, including their unique identifier (UserId), first name, last name, email address, and password.
Stored Procedure:

The system includes a stored procedure named stpFindHospitalByPincode to retrieve hospitals based on a specified pin code.
## Project Structure:

The project consists of two main components: DataAccess and iCare Health TPA.
DataAccess contains the data access layer of the application.
iCare Health TPA is the main project where the TPA system functionality is implemented.
## How to Use:

Clone the repository to your local machine.
Import the SQL file into your SQL Server database to create the necessary tables and stored procedure.
Open the solution file in Microsoft Visual Studio.
Build and run the project to use the iCare Health TPA system.

## License:

This project is licensed under the MIT License
