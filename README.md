# Pentaho ETL Pipeline for Sales Data Automation

## Overview
This project demonstrates the use of Pentaho Data Integration (PDI) to automate the processing of sales data for a furniture company. The pipeline extracts data from multiple sources (CSV, PostgreSQL, AWS S3), cleans and validates it, and loads it into a centralized data warehouse.

## Tools Used
- Pentaho Data Integration (PDI) 9.0.0
- PostgreSQL
- AWS S3
- Tableau (for visualization)

## Steps
1. Extract sales data from CSV, PostgreSQL, and AWS S3.
2. Clean and validate the data using Pentaho transformations.
3. Load the processed data into a PostgreSQL database.
4. Automate the pipeline using Pentaho jobs.

## Screenshots
![Transformation Example](documentation/screenshots/transformation_example.png)
![Job Example](documentation/screenshots/job_example.png)

## Setup Instructions
- Install Pentaho Data Integration (PDI) from [here](https://sourceforge.net/projects/pentaho/).
- Set up PostgreSQL and AWS S3 as per the scripts in the `scripts/` folder.
- Run the transformations and jobs in the `transformations/` and `jobs/` folders.
