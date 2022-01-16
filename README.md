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

See project.info for more details.

