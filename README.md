# Pentaho ETL Pipeline for Sales Data Automation

## Overview
This project demonstrates the use of Pentaho Data Integration (PDI) to automate the processing of sales data for a furniture company. The pipeline extracts data from multiple sources (CSV, PostgreSQL, AWS S3, Excel, Zip Files, XML, JSON), cleans and validates it, and loads it into a centralized data warehouse.

## Tools Used
- Pentaho Data Integration (PDI) 9.0.0
- PostgreSQL
- AWS S3
- pgAdmin

## Steps
1. Extract Customer data from CSV, TXT and ZIP Files
2. Extract Product Data from XML and JSON Files
3. Extract Sales Data from PostgreSQL Table and AWS S3.
4. Merge, clean and validate the data using Pentaho transformations.
5. Load the processed data into a PostgreSQL database.
6. Automate the pipeline using Pentaho jobs.
7. Schedule the Job using Windows Task Scheduler or Cron 

## Screenshots
![Transformation Example](documentation/screenshots/transformation_example.png)
![Job Example](documentation/screenshots/job_example.png)

## Setup Instructions
- Install Pentaho Data Integration (PDI) from [here](https://sourceforge.net/projects/pentaho/).
- Set up PostgreSQL and AWS S3 as per the scripts in the `scripts/` folder.
- Run the transformations and jobs in the `transformations/` and `jobs/` folders.
