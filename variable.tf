variable "token" {}

variable "secrets-mount" {
    default ={
        roboshop-dev ={
            description = "secrets for roboshop"
        }
    }
}
variable "secrets" {
    default = {
        cart ={
            secret_mount    = "roboshop-dev"
            kv              = {
                "REDIS_HOST"    ="redis-dev.sdevops.shop",
                "CATALOGUE_HOST"="catalogue-dev.sdevops.shop",
                "CATALOGUE_PORT" = "8080"
            }
        }
    }
}