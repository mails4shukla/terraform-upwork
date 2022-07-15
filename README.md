# terraform-upwork

How to Run 

Step 1 : 
Goto  create-vpn-gcp-aws folder 
run the terraform apply command 

Inputs to be used in the terraform.tfvars 


GCP Inputs 
gcp_project_id ,
gcp_region ,
gcp_network_name ,
gcp_cidr ,

AWS Inputs 
aws_region ,
aws_vpc_id ,
aws_security_group,
aws_route_tables_ids 


Step 2

Goto create-kube
run the terraform apply command 

Inputs to be used 

gcp_project_id 
gcp_region   
gcp_network_name 
gcp_sub_network 

After the cluster is created 

Go to the Kubectl folder and run the deployment.yaml and service.yaml


Step 3

Goto 









