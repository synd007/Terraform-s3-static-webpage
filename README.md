TERRAFORM AWS S3 STATIC WEBSITE HOSTING



PROJECT OVERVIEW
In this project, I provisioned and deployed a static website using Terraform and Amazon S3. The objective was to automate the setup of a fully functional static site, demonstrating infrastructure as code (IaC) and public content delivery via S3.

This is part of a broader DevOps learning journey, and this lab shows how to take an HTML file, upload it to an S3 bucket, configure it for static website hosting, make it publicly accessible, and expose the website via an endpoint.




KEY FEATURES
#Infrastructure as Code with Terraform
- Defined all AWS resources (S3 bucket, website config, access policy) using HCL in .tf files.
- Enabled repeatable, version-controlled deployments.

#Static Website Hosting on S3
- Provisioned an S3 bucket with website configuration.
- Hosted an HTML file directly from S3 using a public endpoint.

#Public Access Policy
- Attached a bucket policy allowing public read access (s3:GetObject) so the static content can be accessed via a browser.

#Terraform Outputs
- Used Terraform output values to display the hosted site’s endpoint after "terraform apply".





PREREQUISITES
- Basic understanding of AWS and S3.
- Familiarity with Terraform syntax.
- AWS CLI configured via aws configure.
- Terraform(https://developer.hashicorp.com/terraform/downloads) installed locally.
- A simple HTML file (index.html).





STEPS TO DEPLOY
#Step 1: Prepare Your Files
Create your Terraform files (main.tf, output.tf, etc.) and your index.html file in one directory.

project-directory/
├── main.tf
├── output.tf
├── index.html
└── policy.json

#Step 2: Define Terraform Configuration

#Step 3: Initialize and Apply
terraform init
terraform apply -auto-approve

Terraform will output your website’s endpoint.






ACCESS THE SITE
- Copy the value of website_url from the output.
- Paste it in your browser to view your hosted HTML site.

If the HTML file downloads instead of displaying in the browser, ensure:
The content_type is set to "text/html" in the aws_s3_object resource.
The bucket policy is attached **after** disabling public access blocks.





NOTES
- Customize the HTML file to suit your use case.
- Always follow AWS security best practices when allowing public access.

