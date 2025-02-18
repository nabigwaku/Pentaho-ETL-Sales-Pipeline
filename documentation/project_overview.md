# 🪑 Furniture Sales Data ETL Pipeline 🪑  
**Using Pentaho Data Integration (PDI)/Kettle ⚙**  

---

### 📃 Table of Contents:
- [Overview](#-overview)
- [Tools Used](#-tools-used)
- [Project Documentation](#-project-documentation)
- [ETL Process](#-ETL-Process)
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

## 📂 Project Documentation  
- **[Transformations](../transformations)**  
- **[Jobs](../jobs)**  
- **[Screenshots](../screenshots)**  
- **[Data](../data)**  

---

## 📌 ETL Process  
1. **Extract, Clean, and Load Customer Data**  

- **Data Sources:** The data comes from CSV, TXT, and ZIP files.  
  > Steps used:  
  - **Text File Input:** For CSV, TXT, and ZIP files.  
  - **Excel File Input:** For Excel files.  
  - **Data Grid:** For manual data entry.  

- **Data Cleaning and Transformation:**  
  - Sorted and merged data.  
  - Removed duplicates.  
  - Cleaned data fields using **Replace in String**, **Calculate**, **Fuzzy Match**and **Value Mapper** steps.  

  ![Customer Data Extraction](screenshots/customerData%20transformation.png)  

- **Loading Data:** The cleaned data is stored in the **Customer** table using the **Combination Lookup/Update** step.  

  ![Customer Table](screenshots/loaded%20customer%20data%20db.png)

2. **Extract Product Data**  

- **Data Sources:** The data comes from XML and JSON Files.  
  > Steps used:  
  - **Get data from XML:** For XML files.  
  - **JSON Input:** For Json files.  

- **Data Cleaning and Transformation:**  
  - Sorted and merged data.  
  - Removed duplicates.
    
   ![Product Data Extraction](screenshots/productData%20transformation.png)

- **Loading Data:** The cleaned data is stored in the **Product** table using the **Dimension Lookup/Update** step.  

  ![Customer Table](screenshots/loaded%20product%20data%20db.png)

3. **Extract Sales Data**  
   - From PostgreSQL Table and AWS S3.
- **Data Sources:** The data comes from PostgreSQL Table and AWS S3.  
  > Steps used:
  - **Table Input:** For Excel files.  
  - **Hadoop File Input:** For ASW S3, Files from Hadoop.

- **Data Cleaning and Transformation:**  
  - Sorted and merged data.  
  - Removed duplicates.  
  - Cleaned data fields using **Formula**, **Calculate**, **Stream loopup**and **Filter Rows** steps.
    
   ![Sales Data Extraction](screenshots/salesData%20transformation.png)

- **Loading Data:** The cleaned data is stored in the **Product** table using the **Dimension Lookup/Update** step.
  ![Sales DB Output](screenshots/loaded%20sales%20data%20db.png)

4. **Automate the Pipeline**  
   - Using Pentaho jobs.  
   ![Automation](screenshots/sales_pipeline_job.png)  

7. **Schedule the Job**  
   - Using Windows Task Scheduler or Cron.
      1. Run the job in cmd for Windows OS users
      2. Navigate to the location where the Pentaho is stored
      3. To run the Job use syntax below:
          > kitchen.bat /file:"c:funiture_pipelines/sales_pipeline_job.kjb" /level:Basic
      4. Copy the syntax above in Notepad and save File as schedulingjob.bat
      5. Type **taskschd** to load the Windows Task Scheduler and Create a Basic Task referencing the schedulingjob.bat  
   ![Scheduling](images/scheduling.png)

---

## 🛠 Setup Instructions  
1. **Install Pentaho Data Integration (PDI)**  
   - Download and install from [here](https://sourceforge.net/projects/pentaho/).  

2. **Set Up PostgreSQL and AWS S3**  
   - Use the scripts provided in the `scripts/` folder.  

3. **Run Transformations and Jobs**  
   - Execute the transformations and jobs in the `transformations/` and `jobs/` folders.  

---

## 🙌 Support Me!  
👉 If you find this project useful, please ⭐ this repository  
