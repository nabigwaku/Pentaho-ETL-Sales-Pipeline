# 🪑 Furniture Sales Data ETL Pipeline 🪑  
**Using Pentaho Data Integration (PDI)/Kettle ⚙**  

---

### 📃 Table of Contents:
- [Overview](#-overview)
- [Tools Used](#-tools-used)
- [Steps](#-steps)
- [Project Documentation](#-project-documentation)
- [Setup Instructions](#-setup-instructions)

---

## 🖋 Overview  
This project demonstrates the use of **Pentaho Data Integration (PDI)** to automate the processing of sales data for a furniture company. The pipeline extracts data from multiple sources (CSV, PostgreSQL, AWS S3, Excel, Zip Files, XML, JSON), cleans and validates it, and loads it into a centralized data warehouse.  

![image](screenshots/etl_problem.png)
 

---

## 🛠 Tools Used  
- **Pentaho Data Integration (PDI) 9.0.0**  
- **PostgreSQL**  
- **AWS S3**  
- **pgAdmin**  

---

## 📌 Steps  
1. **Extract Customer Data**  
   - From CSV, TXT, and ZIP Files.  
   ![Customer Data Extraction](images/customer_extraction.png)  

2. **Extract Product Data**  
   - From XML and JSON Files.  
   ![Product Data Extraction](images/product_extraction.png)  

3. **Extract Sales Data**  
   - From PostgreSQL Table and AWS S3.  
   ![Sales Data Extraction](images/sales_extraction.png)  

4. **Merge, Clean, and Validate Data**  
   - Using Pentaho transformations.  
   ![Data Cleaning](images/data_cleaning.png)  

5. **Load Processed Data**  
   - Into a PostgreSQL database.  
   ![Data Loading](images/data_loading.png)  

6. **Automate the Pipeline**  
   - Using Pentaho jobs.  
   ![Automation](images/automation.png)  

7. **Schedule the Job**  
   - Using Windows Task Scheduler or Cron.  
   ![Scheduling](images/scheduling.png)  

---

## 📂 Project Documentation  
- **Project Overview**  
- **Transformations**  
- **Jobs**  
- **Screenshots**  
- **Data**  

---

## 🛠 Setup Instructions  
1. **Install Pentaho Data Integration (PDI)**  
   - Download and install from [here](https://sourceforge.net/projects/pentaho/).  

2. **Set Up PostgreSQL and AWS S3**  
   - Use the scripts provided in the `scripts/` folder.  

3. **Run Transformations and Jobs**  
   - Execute the transformations and jobs located in the `transformations/` and `jobs/` folders.  

---

## 👀 Preview Output  
Here’s a preview of the final output after the ETL process:  
![Output Preview](images/output_preview.png)  

---

## 🙌 Support Me!  
👉 If you find this project useful, please ⭐ this repository 😆!  
