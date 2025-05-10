# CloudShield360

**CloudShield360** is a production-ready, modular AWS Secure Landing Zone Infrastructure project built entirely with Terraform using best IaC practices. It supports real deployment and includes reusable modules for rapid DevOps provisioning and zero-trust architecture.

---

## Key Features

- Multi-AZ VPC Architecture (Highly Available)
- Public and Private EC2 Instances (Web & App Tier)
- IAM Identity Management (Roles, Policies, Instance Profiles)
- RDS Database Deployment (PostgreSQL, Private Subnet)
- Secure Internet Access (IGW + NAT + Security Groups)
- Scalable Terraform Modules with Clean Folder Separation
- GitHub Version Control Integration
- Automation-Ready: Terraform Plan → Apply → Destroy

---

## Architecture Overview

cloudshield360/
├── modules/
│ ├── vpc/
│ ├── ec2/
│ ├── iam/
│ └── rds/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md

yaml
Copy code

---

## Technologies Used

- **Terraform** v1.10+
- **AWS** (VPC, EC2, IAM, RDS, CloudTrail)
- **Git & GitHub** for Source Control
- **VS Code** for Development

---

## How to Deploy (Real AWS Deployment)

> Make sure your AWS CLI is configured with valid credentials.

```bash
# Clone or copy the project
cd cloudshield360

# Initialize Terraform
terraform init

# Preview the plan
terraform plan

# Apply to provision live resources
terraform apply

# To clean up (destroy)
terraform destroy
Author
Peter Christian Agbenyega
Cloud Infrastructure Engineer | AWS Certified Solutions Architect | Terraform Expert
Founder — Cloud Nexus Hub LLC
