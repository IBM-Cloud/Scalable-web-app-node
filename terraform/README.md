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

This scalable web application simplifies the "Deploy to IBM Cloud" workflow. It offers a one-click option to create an IBM Cloud Schematics workspace with your choice of preconfigured Terraform templates. The Terraform templates deploy your application to the IBM Cloud with options for the deployment target (Kubernetes or OpenShift) and the DevOps toolchain pipeline structure.

Two types of DevOps toolchain pipeline structures are available with this application:
* Classic pipeline structure
* GitSecure pipeline structure

In Step 1, the first two buttons use the [simple-helm-toolchain](https://github.com/open-toolchain/simple-helm-toolchain) template, which uses a classic pipeline structure. The second two buttons (indicated by "Secured") use the [secure-kube-toolchain](https://github.com/open-toolchain/secure-kube-toolchain) template, which uses a "Git secure" pipeline structure. Both toolchain template options offer a code repository, delivery pipeline(s), and web IDE.

## Steps

Follow these two easy steps to create an IBM Cloud Schematics workspace and apply a Terraform execution plan. When you apply the plan, a Kubernetes or OpenShift cluster is created, and a Node.js Express application is deployed to it by using an IBM Cloud DevOps toolchain.

### Step 1: Create an IBM Cloud Schematics workspace

Click one of the following options for the cluster deployment target and toolchain pipeline type. This action takes you to the "Deploy to IBM Cloud" page, where you create a Schematics workspace. Complete the required fields on that page, and then click **Create**.

> **Note:** Based on which option you select, the corresponding Terraform template from this repository is automatically imported into the new workspace. The Terraform engine version will be v0.12.

[![Deploy to Kubernetes on IBM Cloud](images/Deploy_to_kube.png)](https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/simple-kube&terraform_version=terraform_v0.12)
[![Deploy to OpenShift on IBM Cloud](images/Deploy_to_Openshift.png)](https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/simple-openshift&terraform_version=terraform_v0.12)

[![Deploy to Kubernetes on IBM Cloud (Secured)](images/Deploy_to_kube_Secured.png)](https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/secure-kube&terraform_version=terraform_v0.12)
[![Deploy to OpenShift on IBM Cloud (Secured)](images/Deploy_to_Openshift_Secured.png)](https://cloud.ibm.com/schematics/workspaces/create?repository=https://github.com/IBM-Cloud/Scalable-web-app-node/tree/master/terraform/secure-openshift&terraform_version=terraform_v0.12)

### Step 2: Apply the Terraform execution plan

1. In the **Variables** section of the "Settings" page, enter the values for each variable. Required fields are those without default values. However, default values can be overridden.  

2. Optional. After you enter all the required values for the variables, click **Save changes** to save those values for future use within the same workspace.

3. Optional. Click **Generate plan**. This action creates a Terraform execution plan and checks your configuration for syntax errors. On the Schematics “Activity” page, you can review log files for errors and IBM Cloud resources that must be created, modified, or deleted to achieve the state of the Terraform template.

4. After you enter all the values for the variables and are satisfied with the changes, click **Apply plan**.
  **Note:** This step takes some time to complete (usually between 20-30 minutes, but it can take longer), due to the creation of a new Kubernetes or OpenShift cluster.

5. Follow the progress of this step by clicking the **View log** link next to the corresponding step.

6. After the plan is applied, view the URL to the generated IBM Cloud DevOps toolchain, which is located near the end of the log file on a line that begins with "View the toolchain at:."

>IMPORTANT: If you apply your plan a second time, the previously created Kubernetes or OpenShift cluster and any applications deployed to it are destroyed, and a new cluster is created.

## Next steps

For information about viewing your app, see [Monitor application health](https://cloud.ibm.com/docs/solution-tutorials?topic=solution-tutorials-scalable-webapp-kubernetes#scalable-webapp-kubernetes-monitor_application)

For information about scaling your app, see [Scale Kubernetes pods](https://cloud.ibm.com/docs/solution-tutorials?topic=solution-tutorials-scalable-webapp-kubernetes#scalable-webapp-kubernetes-scale_cluster).

## Related information

For more information about this workflow, see [Getting started with IBM Cloud Schematics and Terraform](https://cloud.ibm.com/docs/schematics?topic=schematics-getting-started).
