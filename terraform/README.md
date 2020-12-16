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

# Create and deploy a Node.js Express application by using IBM Cloud Schematics

IBM Cloud Schematics delivers Terraform-as-a-Service so that you can use a high-level scripting language to model the resources that you want in your IBM Cloud environment, and enable Infrastructure as Code (IaC). [Terraform](https://www.terraform.io/) is an Open Source software that is developed by HashiCorp that enables predictable and consistent resource provisioning to rapidly build complex, multi-tier cloud environments.

## Steps

Follow these two easy steps to create an IBM Cloud Schematics workspace and apply a Terraform template. When you apply the template, a Kubernetes cluster is created, and a Node.js Express application is deployed to it by using an IBM Cloud DevOps toolchain.

### Step 1: Create an IBM Cloud Schematics workspace

Click one of the following options for the cluster deployment type (Left: Vanilla Kubernetes, Right: OpenShift Kubernetes). This action takes you to the "Create a Schematics Workspace" page. Complete the required fields on that page, and then click **Create**.

> **Note:** Based on which option you select, the corresponding Terraform template from this repository is automatically imported into the new workspace. The Terraform engine version is v0.12.

<p align="center">
    <a href="https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/simple-kube&terraform_version=terraform_v0.12">
    <img src="https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/images/Deploy_to_kube.png" alt="Deploy to Kubernetes on IBM Cloud">
    </a>
    <a href="https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/simple-openshift&terraform_version=terraform_v0.12">
    <img src="https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/images/Deploy_to_Openshift.png" alt="Deploy to OpenShift on IBM Cloud">
    </a>
</p>

### Step 2: Generate and apply the Terraform execution plan

1. In the **Variables** section of the "Settings" page, enter the values for each variable. Required fields are those without default values. However, default values can be overridden.  

2. Optional. After you enter all the required values for the variables, click **Save changes** to save those values for future use within the same workspace.

3. Optional. Click **Generate plan**. This action takes you to the "Activity" page, where the status of the generating plan is displayed.  

4. After you enter all the values for the variables and are satisfied with the changes, click **Apply plan**.
  **Note:** This step takes some time to complete (usually between 20-30 minutes, but it can take longer), due to the creation of a new Kubernetes cluster.

5. Follow the progress of this step by clicking the **View log** link next to the corresponding step.

6. After the plan is applied, view the URL to the generated IBM Cloud DevOps toolchain, which is located near the end of the log file on a line that begins with "View the toolchain at:."

>IMPORTANT: If you apply your plan a second time, the previously created Kubernetes cluster and any applications deployed to it are destroyed, and a new cluster is created.

## Related information

For more information about this workflow, see [Getting started with IBM Cloud Schematics and Terraform](https://cloud.ibm.com/docs/schematics?topic=schematics-getting-started).
