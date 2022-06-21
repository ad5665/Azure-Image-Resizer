#######################################################################################################
# Environment variable definitions for stuff that is secret to the person who is running terraform    #
# You should have a separate local file that contains the values for the variables in this block.     #
# Please see the templates under ../tamplates/local/                                                #
#######################################################################################################

variable "sql_login" {}

variable "sql_password" {}