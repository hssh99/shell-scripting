## L1  - Fundamentals of DevOps

- Improving Delivery
- Automation
- Quality
- Monitoring
- Testing

## L3 - AWS - How to create virtual machines

- We can automate using AWS CLI, AWS API (Boto3), AWS CFT (Cloud formation template), AWS CDK (cloud development kit)
- Terraform is one of the alternatives to automate the resource creation
- Terraform can automate the process in any cloud provider - AWS, Azure, GCP
- If the org is more AWS focused, we can use AWS CDK over Terraform as it has more advanced features
- Hybrid cloud model

## L5 - AWS CLI guide | How to login to ec2 instance

```bash
ssh ubuntu@<ip_address> # this wont work since we have to authenticate via key pair file

chmod 600 <pem_file_location> # change the permission of the file

ssh -i <pem_file_location> ubuntu@<ip_address>
# eg. ssh -i /Users/xyz/Downloads/test11.pem ubuntu@1.2.3.4

```

- Download AWS CLI
- Authenticate your aws account by creating AWS access key in security credentials 
- type cmd in terminal - `aws configure`

```bash
# aws cli commands

aws --version # to check if aws cli is installed properly
aws configure  # to configure aws account
aws s3 ls # list all s3 buckets
aws s3 mb s3://<your-unique-bucket-name> --region ap-south-1 # create s3 bucket from cli

aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e # create ec2 instance using aws cli
```

## L6  - Linux and Shell Scripting

* Why linux ? - Fast, Secure, free, many distributions available, Open Source


```bash
# Commands for Shell Scripting

pwd # present working dir
cd # change dir
cd ../.. # to switch b/w multiple level of directories
ls # list all dir & files
ls -ltr # list dirs and files with all the info (owner, group owner, timestamp, is it file/dir, size, permissions)
touch <file_name> # create a file
vi <file_name> # create a file and start writing
cat <file_name> # print the file
mkdir <dir_name> # create a directory
rm <file_name # remove a file
rm -r <dir_name> # remove a directory
free -g # to check the memory of the server
nproc # to check no. of CPUs 
df -h # disk size
top # to monitor everything at one place

```

## Shell Scripting - Part 1

- Shell Scripting is automating the regular or day-to-day activities on the linux server

```bash

touch first-shell-script.sh
man <cmd_name> # to know more about the command
vi/vim <file_name> # creates and open the file

#!/ => Shebang

#!/bin/bash => recommended

:wq! # Save the file
:q! # exit from the file

cat <file_name> # print content of the file

chmod # Grants permissions
chmod 444 <file_name> # grant read-only access
chmod 777 <file_name> # grant all access
history # all the recent commands
rm -rf # to delete the directory

```

- Various executables - bash, dash, sh, ksh
- They all vary a little in syntax

* Diff b/w - #!/bin/sh vs #!/bin/bash

- /bin/sh redirects to /bin/bash due to Linking process
- Note: Ubuntu recently have started redirecting /bin/sh to /bin/dash. Hence, mention executable properly 

* How to execute shell script

- In linux, to execute any executable file => `./<file_name>` or `sh <file_name>`

- chmod grants permissions for 3 things (User, Group, Everyone)
1. what is the permissions for all users
2. your group
3. for you

- 4 => read
- 2 => write
- 1 => execute