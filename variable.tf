variable "token" {}

variable "secrets-mount" {
    default ={
        roboshop-dev ={
            description = "secrets for roboshop"
        }
    }
}