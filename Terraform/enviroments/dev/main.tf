module "resource_group" {
    source = "../../modules/resource_group"
    name = local.resource_group_name
    location = local.location
    tags = local.tags
}

module "storage_account" {
    source = "../../modules/storage/storage_account"
    name = "imageresizer${local.env}"
    resource_group_name = local.resource_group_name
    location = local.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    account_kind = "BlobStorage"
    tags = local.tags
}

module "storage_container" {
    source = "../../modules/storage/storage_container"
    name = "imageresizer${local.env}"
    storage_account_name = module.storage_account.name
    container_access_type = "blob"
}

module "storage_container_tfstate" {
    source = "../../modules/storage/storage_container"
    name = "tfstate${local.env}"
    storage_account_name = module.storage_account.name
    container_access_type = "private"
}

module "sql_server" {
    source = "../../modules/sql/sql_server"
    name = "imageresizer${local.env}"
    resource_group_name = local.resource_group_name
    location = "eastus2" ## different due to msdn subscription 
    //version = "12.0"
    administrator_login = var.sql_login
    administrator_login_password = var.sql_password
    tags = local.tags
}