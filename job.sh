#!/bin/bash

echo "00000000000000ini Setup"
chmod +x iniSetup.sh
./iniSetup.sh
cd
#############################
#provisionResource Terraform
cd ./AWSCICD-Terraform/
echo "00000000000000proviosn resources"
chmod +x provisionResource_job.sh
source iniSetup.sh
./provisionResource_job.sh
cd
#############################
cd ./AWSCICD-Terraform/
echo "00000000000000ansible job"
chmod +x ansibleJob.sh
source provisionResource_job.sh
./ansibleJob.sh
#############################
#############################