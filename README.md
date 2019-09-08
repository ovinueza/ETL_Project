![Alt text](https://github.com/ovinueza/ETL_Project/blob/master/Images/Alt%20Fuels%20Logo.jpg)

# Alternative Fuel Vehicles ETL Project

### Table of Contents
* [Introduction](#Introduction)

* [Expected Results](#Expected-Results)

* [Installation](#Installation)

* [Running this Project](#Running-this-project)

* [Write Up](#Write-Up)

* [Authors](#Authors)



## Introduction
The need for alternative fuels to power vehicles and other modes of transportation has grown over the years. Sometimes these needs are related to the need to reduce fuel cost or due to a conscious effort to protect the enviroment. 

The EIA website containes two types of data relating to alternative fuels, one from a supplier side and one from a user side. Suppliers include original equipment manufacturers and aftermarket vehicle converters. The supplier side data shows how many vehicles can operate on an alternate fuel whereas the user side data shows how many AFVs (Alternative Fueled Vehicles) are in use based on surveys done by the federal and state governments, alternative fuel providers, and transit companies. 

For this project, we chose the supplier side and focused our data preparation and possible uses on how many AFVs have been made available in the auto market. 

## Expected Results

Through this ETL project, we will have a better understanding of which categories, broken down by vehicle type, fuel type and weight class, the auto manufacturers have focused on adding alternative fuel compatibility to.

## Installation
To run this project you will need to have the following installed:

Python 3 or later

Pandas

Numpy

`$ pip install sqlalchemy`

`$ pip install time`

`$ pip install psycopg2`

and 

[PostgreSQL11](https://www.postgresql.org/download/)

## Running this Project
You will need 8 csv files located in the [Resources](https://github.com/ovinueza/ETL_Project/tree/master/Resources) folder or if you would like to download them yourself please click [here](https://www.eia.gov/renewable/afv/supply.php?fs=a&sfueltype=CNG).
In addition you will need the TableCreation.sql, ReadCleanWrite.ipynb and Queries.sql located in this repo.

### Start
1. Start by creating a database in pgAdmin named dbFuelTypes then use the Query Tool to run the TableCreation.sql file. This will create the necessary tables where the data will load.
    ![Alt text](https://github.com/ovinueza/ETL_Project/blob/master/Images/QuickDBD-EIA%20Alternative%20Fuels.png)

2. Run the ReadCleanWrite.ipynb file. This will load all the transformed and normalized data from the csv files into pgAdmin. **IMPORTANT**: Make sure to replace ***"MyPassword"*** to your pgAdmin password on cells 11 and 20.

    ![Alt text](https://github.com/ovinueza/ETL_Project/blob/master/Images/Cell11.JPG)
    ![Alt text](https://github.com/ovinueza/ETL_Project/blob/master/Images/Cell20.JPG)


3. Run the Queries.sql file to see the type of information we obtained out of this project.

    ![Alt text](https://github.com/ovinueza/ETL_Project/blob/master/Images/Queries.JPG)

## Write Up
A write up for this project can be downloaded [here](https://github.com/ovinueza/ETL_Project/tree/master/Write%20Up).

## Authors
Shahzad Naseer

and 

Oswald Vinueza











