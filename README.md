## Introduction
This project contains a full ACL(access control list) System and an Employee salary Management System.

### First-time setup
At the login page, press the button "Login Anonymously", then press "Set Up System". 

This will import any data from the database into the program, including default departments roles, resources, and an existing administrator account.

## Main Functionality
There are two roles initially: administrator and normal user.

Admin can access
- User Department Management
- Account Management
- User Role Management
- Role Management
- Resource Management
- Role Resource Management
- Employee Salary Management

For the **Employee Salary Management**, all data originally is from *datasheet.csv*. It has two parts: *Stat* and *Sql*.

For both types of users:
- In *Stat* Page, you can see different diagrams for current employees information. 
- In *Sql* Page, you can see a table that contains the summary of the statistics of current employees information. 

If you are an administrator, you can also modify employee information by adding/deleting/editing/searching employee(s). 

Note: you can login using the existing administrator's account to change other user's role into an administrator:

**Username: admin**, **Password: admin**


**Try the following process to run this program.**

## Environment Preparation
- OS recommendation: Ubuntu Linux 18.04
- Application Server: Download and install Django 2.1.5
- Database Server: Download and install MySQL 5.7, 
*Note: table names are not case-sensitive.*
- Connection Pool: Download and install DBUtils 1.3

## Database initialization
- Create a database named *** (e.g. training).
- Under MySQL client, enter into the *** to run db/sys_setup.sql 

## Application Deployment
- Copy src to Django installation directory. If src has already exist, delete it first.
- Modify Connection Pool configuration:

    Inside **src/trydjango/settings.py**
    - from lines 88-103, change DATABASES by replacing NAME with your MySQL database name ***
    - USER with your MySQL account username
    - PASSWORD with your MySQL database password. 
    - Keep everything else unchanged.
    
    Inside **src/training/db.py**
    - from lines 7-24, change POOL by replacing database with your MySQL database name ***
    - user with your MySQL account username
    - password with your MySQL database password
    - Keep everything else unchanged.

**Run Django server and open browser and visit URL: http://127.0.0.1:8000**

