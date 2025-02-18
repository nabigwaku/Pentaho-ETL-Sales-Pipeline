# 1. Setting Up an AWS S3 Bucket

## Steps:

### Create an AWS Account (if you don’t have one):
- Go to [AWS](https://aws.amazon.com/) and sign up for a free tier account.

### Create an S3 Bucket:
1. Log in to the [AWS Management Console](https://aws.amazon.com/console/).
2. Navigate to the **S3** service.
3. Click **Create bucket**.
4. Provide a unique name for your bucket (e.g., `pentaho-sales-data`).
5. Choose a region (e.g., `us-east-1`).
6. Leave other settings as default and click **Create bucket**.

### Upload a CSV File to the Bucket:
1. Click on the bucket name you just created.
2. Click **Upload** and select your CSV file (e.g., `SalesforAWSandHadoop.csv`).
3. Click **Upload**.

### Set Permissions:
1. Ensure the bucket and file are accessible to your Pentaho instance.
2. Go to the **Permissions** tab of the bucket.
3. Under **Block public access**, ensure public access is allowed (if needed).
4. Add a bucket policy if required for access.

---

# 2. Accessing the CSV File from AWS S3 Using Pentaho

## Steps:

### Configure AWS Credentials in Pentaho:
1. Open Pentaho Spoon.
2. Go to **Tools > Hadoop Distribution**.
3. Select **Amazon EMR** or **Manual** and configure AWS credentials (Access Key and Secret Key).

### Create a Transformation to Access S3:
1. Drag and drop the **Amazon S3 Input** step into the transformation workspace.
2. Configure the step:
   - **Access Key**: Your AWS Access Key.
   - **Secret Key**: Your AWS Secret Key.
   - **Bucket Name**: Name of your S3 bucket (e.g., `pentaho-sales-data`).
   - **File Name**: Name of the CSV file (e.g., `SalesforAWSandHadoop.csv`).
3. Add a **Text File Output** step to save the data locally or process it further.

### Run the Transformation:
- Execute the transformation to read the CSV file from S3.

---

# 3. Accessing the CSV File from Hadoop Using Pentaho

## Steps:

### Set Up Hadoop:
1. Install Hadoop on your local machine or use a cloud-based Hadoop service (e.g., Amazon EMR, Cloudera, or Hortonworks).
2. Ensure Hadoop is running and accessible.

### Upload the CSV File to Hadoop:
- Use the Hadoop command line to upload the CSV file to HDFS:
  ```bash
  hdfs dfs -put SalesforAWSandHadoop.csv /user/pentaho/sales_data/
