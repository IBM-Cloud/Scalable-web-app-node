terraform {
  required_version = ">= 1.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.12.0"
    }
  }
}

resource "random_string" "random" {
  length = 4
  min_lower = 4
}

data "ibm_resource_group" "group" {
  name = var.resource_group
}

provider "ibm" {
  ibmcloud_api_key   = var.ibmcloud_api_key
}

resource "ibm_container_cluster" "cluster" {
  name              = var.cluster_name
  datacenter        = var.datacenter
  default_pool_size = var.default_pool_size
  machine_type      = var.machine_type
  hardware          = var.hardware
  private_vlan_id   = var.private_vlan_id
  public_vlan_id    = var.public_vlan_id
  resource_group_id = data.ibm_resource_group.group.id
}

module "ibm-kubernetes-toolchain" {
  source            = "github.com/IBM-Cloud/ibm-kubernetes-toolchain-module"
  ibmcloud_api_key  = var.ibmcloud_api_key
  region            = "us-south"
  toolchain_name    = "terraform-toolchain-node-${random_string.random.result}"
  application_repo  = "https://github.com/IBM-Cloud/Scalable-web-app-node"
  resource_group    = var.resource_group
  cluster_name      = ibm_container_cluster.cluster.name
  cluster_namespace = var.cluster_namespace
  container_registry_namespace = var.container_registry_namespace
  toolchain_template_repo = "https://github.com/open-toolchain/secure-kube-toolchain"
  pipeline_type     = "tekton"
  branch            = "master"
}
