locals {
    ##################
    ##    Shared    ##
    ##################
    resource_group_name = "ImageResizer-dev"
    location = "uksouth"
    tags = {
        env = "dev"
        app = "ImageResizer"
    }
    env = "dev"
}
