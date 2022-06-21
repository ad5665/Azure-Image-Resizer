:: Template for the environment variable needed to deploy ImageResizer in Azure with terraform
:: Copy this file to somewhere on your machine
:: Name the file with a the-environment-this-is-for.cmd extension
:: Run the file before you run terraform

:: Set the tenancy OCID for this tenancy

setx TF_VAR_sql_login "devresizer"

setx TF_VAR_sql_password "devresizerpw!"