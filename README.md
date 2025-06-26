# DevOps-Practice-
This repo conatine Terraform Ansible CI/CD  Docker K8 Jfrog Grafana promothesus  

Got it! Here’s a **clean, simple, and ready-to-use README.md content** for your Terraform project. You can directly copy-paste this into your GitHub repo’s `README.md` file:

---

```markdown
# 🚀 Terraform Infrastructure as Code (IaC) — The Ultimate Kickstart Guide! 🎉

## 1️⃣ What is Terraform? 🤔
Terraform lets you write code that builds your cloud infrastructure automatically — no manual clicks required!  
It converts your `.tf` files into API calls to AWS, Azure, GCP, and more.  
Want to switch clouds? Just update the provider block!

---

## 2️⃣ Why Use Terraform?  
- Manage all your cloud resources (EC2, VPCs, Load Balancers, Databases) with one tool  
- Automate changes by updating code, not clicking around  
- Collaborate easily with Git version control  
- Use standardized, reusable configs to reduce errors  

---

## 3️⃣ Basic Terraform Workflow  
1. `terraform init` — Initialize your workspace and download providers  
2. `terraform plan` — Preview changes (dry run)  
3. `terraform apply` — Apply changes and provision resources  
4. `terraform destroy` — Tear down infrastructure when needed  

---

## 4️⃣ Project Structure Example  
```

terraform-project/
├── main.tf           # Root config: providers, modules
├── variables.tf      # Input variables
├── outputs.tf        # Outputs after apply
└── modules/
└── ec2/
├── main.tf
├── variables.tf
└── outputs.tf

````

---

## 5️⃣ Provider Block Sample (main.tf)  
```hcl
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-west-2"  # Optional but recommended
}
````

---

## 6️⃣ Use Input Variables

Avoid hardcoding values. Use `variables.tf` to declare variables and provide values via `terraform.tfvars` or CLI.

---

## 7️⃣ Managing State Files

* Terraform creates `terraform.tfstate` to track resources
* **Never commit state files to Git** (they contain sensitive info)
* Store state files **remotely** in AWS S3 (or Azure Blob, etc.)
* Use **DynamoDB for state locking** to prevent concurrent runs

---

## 8️⃣ Configure Remote Backend (Example)

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
```

---

## 9️⃣ Basic Git Commands

```bash
git status
git add .
git commit -m "Add Terraform config"
git push origin main
```

---

## 🔟 Summary

* Store code in GitHub
* Store state files remotely in S3
* Use DynamoDB for locking
* Never manually edit state files
* Always run `terraform init` after changes to providers or backend

---

