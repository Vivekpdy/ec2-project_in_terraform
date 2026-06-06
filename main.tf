locals{
    server_name ="${var.environment}-web_server"

}
# # why we  use local variable
# =locals values are named expressions used to store and reuse values within a Terraform configuration.it help reduce duplication and improve readability

resource "aws_instance" "web-ec2"{
    ami ="ami-0c55b159cbfafe1f0"
    instance_type =var.instance_type

    tags={
        name=locals.server_name
        environment =var.environment
    }

}