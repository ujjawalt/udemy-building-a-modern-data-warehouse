/************************************************************

======================================
CREATE DATABASE AND SCHEMAS
=====================================
Script Purpose: 
	This script creates a new Database called 'EDW' after checking if it does not already EXISTS. 
	If the database already exists then the command will not fail but database will not be re-created. Follow below warning to re-create the DB.

Warning: 
	Using the DROP database command can be used to re-create the DB and Schemas, however it will drop the existing database so it is adviced to take proper backups before dropping and re-creating the database and schemas. 
	
*************************************************************/

USE ROLE ACCOUNTADMIN; 

-- CREATE THE DB
CREATE DATABASE IF NOT EXISTS EDW
COMMENT = 'Enterprise Data Warehouse as part of Udemy course - Building A Moder Data Warehouse'
DATA_RETENTION_TIME_IN_DAYS = 1;

-- USE NEW CREATED DB
USE EDW;

-- CREATE BRONZE LAYER SCHEMA IN EDW
CREATE SCHEMA BRONZE;
-- CREATE SIVER LAYER SCHEMA IN EDW
CREATE SCHEMA SILVER;
-- CREATE GOLD LAYER SCHEMA IN EDW
CREATE SCHEMA GOLD;
