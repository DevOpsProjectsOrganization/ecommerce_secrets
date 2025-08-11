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
        catalogue ={
            secret_mount    = "roboshop-dev"
            kv              = {
                "MONGO"        = "true"
                "MONGO_URL"    = "mongodb://mongodb-dev.sdevops.shop:27017/catalogue",
                "DB_TYPE"       = "mongo",
                "APP_GIT_URL"   = "https://github.com/roboshop-devops-project-v3/catalogue",
                "DB_HOST"       = "mongodb-dev.sdevops.shop"
                "SCHEMA_FILE"   = "db/master-data.js"
            }
        }
        dispatch = {
            secret_mount    = "roboshop-dev"
            kv              = {
                AMQP_HOST   = "rabbitmq-dev.sdevops.shop",
                AMQP_USER   = "roboshop",
                AMQP_PASS   = "roboshop123",
            }
        }
        frontend = {
            secret_mount    = "roboshop-dev"
            kv              = {
                CATALOGUE_HOST   = "catalogue-dev.sdevops.shop",
                CATALOGUE_PORT   = "8080",
                USER_HOST        = "user-dev.sdevops.shop",
                USER_PORT        = "8080",
                CART_HOST        = "cart-dev.sdevops.shop",
                CART_PORT        = "8080",
                SHIPPING_HOST    = "shipping-dev.sdevops.shop",
                SHIPPING_PORT    = "8080",
                PAYMENT_HOST     = "payment-dev.sdevops.shop",
                PAYMENT_PORT     = "8080",
                CATALOGUE_URL    = "http://catalogue-dev.sdevops.shop:8080",
                USER_URL         = "http://user-dev.sdevops.shop:8080",
                CART_URL         = "http://cart-dev.sdevops.shop:8080",
                SHIPPING_URL     = "http://shipping-dev.sdevops.shop:8080",
                PAYMENT_URL      = "http://payment-dev.sdevops.shop:8080"

                #CATALOGUE_URL    = "172.31.18.246:8080",
                #USER_URL         = "172.31.30.64:8080",
                #CART_URL         = "172.31.27.140:8080",
                #SHIPPING_URL     = "172.31.27.113:8080",
                #PAYMENT_URL      = "172.31.22.146:8080"

            }
        }
        payment = {
            secret_mount    = "roboshop-dev"
            kv              = {
                CART_HOST   = "cart-dev.sdevops.shop",
                CART_PORT   =  "8080",
                USER_HOST   = "user-dev.sdevops.shop",
                USER_PORT   = "8080",
                AMQP_HOST   = "rabbitmq-dev.sdevops.shop",
                AMQP_USER   ="roboshop",
                AMQP_PASS   = "roboshop123"
            }
        }
        shipping = {
            secret_mount    = "roboshop-dev"
            kv              = {
                CART_ENDPOINT   = "cart-dev.sdevops.shop:8080",
                DB_HOST         = "mysql-dev.sdevops.shop",
                DB_TYPE         = "mysql",
                APP_GIT_URL     = "https://github.com/roboshop-devops-project-v3/shipping",
                DB_USER         = "root",
                DB_PASS         = "RoboShop@1",   
            }
        }
        user    = {
            secret_mount    = "roboshop-dev"
            kv              = {
                MONGO       = "true",
                REDIS_URL   ="redis://redis-dev.sdevops.shop:6379",
                MONGO_URL   ="mongodb://mongodb-dev.sdevops.shop:27017/users"
            }
        }
        mysql   = {
            secret_mount    = "roboshop-dev"
            kv              = {
                ROOT_PASSWORD = "RoboShop@1"
            }
        }
         rabbitmq   = {
            secret_mount    = "roboshop-dev"
            kv              = {
                ROOT_USER      = "roboshop",
                ROOT_PASSWORD = "roboshop123"
            }
        }
    }
}