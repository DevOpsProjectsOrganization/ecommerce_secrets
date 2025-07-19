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
        cart-secret ={
            secret_mount    = "/roboshop-dev"
            kv              = {
                "key" ="value"
            }
        }
    }
}