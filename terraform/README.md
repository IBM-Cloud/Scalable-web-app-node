---
copyright:
  years: 2020
---
<p align="center">
    <a href="https://cloud.ibm.com">
        <img src="https://cloud.ibm.com/media/docs/developer-appservice/resources/ibm-cloud.svg" height="100" alt="IBM Cloud">
    </a>
</p>

<p align="center">
    <a href="https://cloud.ibm.com">
    <img src="https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg" alt="IBM Cloud">
    </a>
    <img src="https://img.shields.io/badge/platform-node-lightgrey.svg?style=flat" alt="platform">
    <img src="https://img.shields.io/badge/license-Apache2-blue.svg?style=flat" alt="Apache 2">
</p>

# Create and deploy a Node.js Express application via IBM Cloud Schematics

IBM Cloud Schematics delivers Terraform-as-a-Service so that you can use a high-level scripting language to model the resources that you want in your IBM Cloud environment, and enable Infrastructure as Code (IaC). [Terraform](https://www.terraform.io/) is an Open Source software that is developed by HashiCorp that enables predictable and consistent resource provisioning to rapidly build complex, multi-tier cloud environments.

## Steps

Follow these two easy steps below to create an IBM Cloud Schematics Workspace, and apply a Terraform template to create a Kubernetes cluster and deploy a Node.js Express application to it via an IBM Cloud DevOps Toolchain.

### Create an IBM Cloud Schematics Workspace

<p align="center">
    <a href="https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/kubernetes&terraform_version=terraform_v0.12">
    <img src="https://cloud.ibm.com/devops/setup/deploy/button_x2.png" alt="Deploy to Kubernetes on IBM Cloud">
    </a>
    <a href="https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/openshift&terraform_version=terraform_v0.12">
    <img src="https://cloud.ibm.com/devops/setup/deploy/button_x2.png" alt="Deploy to OpenShift on IBM Cloud">
    </a>
</p>

Click the button above for the desired cluster deployment type (Left: Vanilla Kubernetes, Right: OpenShift Kubernetes). This will take you to the "Create a Schematics Workspace" page. Fill out the required fields and click the "Create" button. 
> **NOTE:** The Terraform templates in this repository will automatically be imported into the new workspace, and the Terraform engine version will be v0.12.

### Generate and Apply Plan

Under the "Variables" section of the "Settings" page, enter the desired values for each variable. Required fields are those without default values. However, default values can be overridden.  

After entering all the required values for the variables, you may optionally click the "Save changes" button to save those values for future use within the same workspace. Otherwise, click the "Generate plan" button at the top of the page. This will take you to the "Activity" page, where it will show you the status of the generating plan.  

Once the plan has finished generating, click the "Apply plan" button. Note, this step can take a long time to complete (usually between 20-30 minutes), due to the creation of a new Kubernetes cluster. You can follow along with the progress of this step by clicking the "View log" link next to the corresponding step. Once the plan has been applied, you will be provided with a URL to the generated IBM Cloud DevOps Toolchain, which can be found near the end of the log file on a line beginning with "View the toolchain at:".



>IMPORTANT: If you decide to apply your plan a second time, the previously created Kubernetes cluster and any applications deployed to it will be destroyed and a new cluster will be created. 

## More Information

For more detailed information about this workflow, go to the [Getting started with IBM Cloud Schematics and Terraform](https://cloud.ibm.com/docs/schematics?topic=schematics-getting-started) IBM Cloud Docs page.