variable "ibmcloud_api_key" {
  type        = string
  description = "The IAM API Key for IBM Cloud access (https://cloud.ibm.com/iam/apikeys)"
}

variable "resource_group" {
  type        = string
  description = "Resource group name where the toolchain should be created (`ibmcloud resource groups`)"
}

variable "cluster_name" {
  type        = string
  description = "Name of new Kubernetes cluster to create"
}

variable "machine_type" {
  default     = "b3c.4x16"
  description = "Name of machine type from `ibmcloud ks flavors --zone <ZONE>`"
}
variable "hardware" {
  default     = "shared"
  description = "The level of hardware isolation for your worker node. Use 'dedicated' to have available physical resources dedicated to you only, or 'shared' to allow physical resources to be shared with other IBM customers. For IBM Cloud Public accounts, the default value is shared. For IBM Cloud Dedicated accounts, dedicated is the only available option."
}

variable "datacenter" {
  type        = string
  description = "Zone from `ibmcloud ks zones --provider classic`"
}

variable "private_vlan_id" {
  type        = string
  description = "ID for private VLAN from `ibmcloud ks vlan ls --zone <ZONE>`. NOTE: If a VLAN does not exist in the ZONE specified, just enter 'vlan' for this value and one will be created for you."
}

variable "public_vlan_id" {
  type        = string
  description = "ID for public VLAN from `ibmcloud ks vlan ls --zone <ZONE>`. NOTE: If a VLAN does not exist in the ZONE specified, just enter 'vlan' for this value and one will be created for you."
}

variable "default_pool_size" {
  default     = "1"
  description = "Number of worker nodes for the new Kubernetes cluster"
}

variable "cluster_namespace" {
  type        = string
  description = "Kubernetes namespace to deploy into. NOTE: If the namespace does not exist, it will be created."
}

variable "container_registry_namespace" {
  type        = string
  description = "IBM Container Registry namespace to save image into. NOTE: If the namespace does not exist, it will be created."
}
