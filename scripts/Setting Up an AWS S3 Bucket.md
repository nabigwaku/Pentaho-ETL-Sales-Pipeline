1. Setting Up an AWS S3 Bucket
Steps:
 > Create an AWS Account (if you don’t have one):
    a) Go to AWS and sign up for a free tier account.
    b) Create an S3 Bucket:
        Log in to the AWS Management Console.
        Navigate to the S3 service.
        Click Create bucket.
        Provide a unique name for your bucket (e.g pentaho-sales-data).
        Choose a region (e.g., us-east-1).
        Leave other settings as default and click Create bucket.
    c) Upload a CSV File to the Bucket:
        Click on the bucket name you just created.
        Click Upload and select your CSV file (e.g SalesforAWSandHadoop.csv).
        Click Upload.
    d) Set Permissions:
        Ensure the bucket and file are accessible to your Pentaho instance.
        Go to the Permissions tab of the bucket.
        Under Block public access, ensure public access is allowed (if needed).
        Add a bucket policy if required for access.

2. Accessing the CSV File from AWS S3 Using Pentaho
Steps:

 > Configure AWS Credentials in Pentaho:
    a) Open Pentaho Spoon.
        Go to Tools > Hadoop Distribution.
        Select Amazon EMR or Manual and configure AWS credentials (Access Key and Secret Key).

    b) Create a Transformation to Access S3:
        Drag and drop the Amazon S3 Input step into the transformation workspace.
        Configure the step:
            Access Key: Your AWS Access Key.
            Secret Key: Your AWS Secret Key.
            Bucket Name: Name of your S3 bucket (e.g., pentaho-sales-data).
            File Name: Name of the CSV file (e.g., SalesforAWSandHadoop.csv).
        Add a Text File Output step to save the data locally or process it further.

3. Run the Transformation:
        Execute the transformation to read the CSV file from S3.