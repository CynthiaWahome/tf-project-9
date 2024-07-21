# Setting Up an EKS Cluster with Terraform and kubectl Using AWS Cloud9

## Overview

This beginner-friendly project guides you through creating an Amazon EKS Cluster and installing `kubectl` using Terraform. It covers setting up Terraform, creating an EKS cluster, and configuring necessary AWS resources. Follow this guide to efficiently manage your Kubernetes infrastructure in AWS.

## Prerequisites

1. **Terraform Installation**

   Install Terraform on your local machine by following the official guide by HashiCorp:
   - [Install Terraform using CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
   - [Download Terraform](https://www.terraform.io/downloads.html)

2. **Visual Studio Code Installation**

   Download and install Visual Studio Code by following this guide:
   - [Download Visual Studio Code](https://code.visualstudio.com/download)

3. **Alternative: Cloud9 Service**

   If you prefer not to install Terraform locally, you can utilize the Cloud9 service:
   - [How to Create Cloud9 FAQ](https://www.whizlabs.com/labs/support-document/how-to-create-cloud9-faq)

## Task Details

1. **Sign in to AWS Management Console**

   - Access the AWS Management Console at [AWS Console](https://aws.amazon.com/console/).

2. **Setup Visual Studio Code**

   - Open Visual Studio Code and configure it for your Terraform project.

3. **Create a `variables.tf` File**

   - Define your variables in a `variables.tf` file.

4. **Create an EKS Cluster in the `main.tf` File**

   - Define the EKS cluster and its configurations in the `main.tf` file.

5. **Create an `output.tf` File**

   - Specify the output variables in an `output.tf` file to obtain useful information about the deployed resources.

6. **Confirm Terraform Installation**

   - Verify the installation by checking the version:
     ```bash
     terraform version
     ```

7. **Apply Terraform Configurations**

   - Execute the Terraform commands to apply the configurations:
     ```bash
     terraform init
     terraform apply
     ```

8. **Check AWS Resources**

   - Verify the created EKS cluster in the AWS Management Console.

9. **Create an Environment in CloudShell**

   - Set up an environment in AWS CloudShell for further configurations.

10. **Install `kubectl` on AWS CloudShell**

    - Install `kubectl` to manage Kubernetes clusters:
      ```bash
      curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
      chmod +x ./kubectl
      mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl
      export PATH=$PATH:$HOME/bin
      ```

11. **Configure AWS CloudShell to Communicate with Your Cluster**

    - Set up your CloudShell to communicate with your EKS cluster.

12. **Delete Resources**

    - Remove the resources by executing:
      ```bash
      terraform destroy
      ```

## Cost Considerations

Be aware that creating and managing AWS resources may incur costs. Review and understand the pricing for EKS clusters and related services you are using. Always delete resources when they are no longer needed to avoid unnecessary charges.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Notes

- Ensure you follow best practices for managing AWS resources and Terraform configurations.
- For additional help, refer to the official [Terraform Documentation](https://www.terraform.io/docs) and [AWS Documentation](https://docs.aws.amazon.com/), or seek support from the community.
