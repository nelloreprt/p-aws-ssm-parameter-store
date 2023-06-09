# designed as LIST_type
parameter = [
# frontend_component_parameters
  # The Frontend is communicating to the components over the LoadBalancer,
  # but The LoadBalancer listens on Port_80,
  # so we need to update port_8080 to port_80 only for FRONTEND.
  # Each and every component will be accessed by Frontend over LoadBalancer

  # { name = "dev.frontend.catalogue_url" , value = "http://catalogue-dev.nellore.online:8080/" },
  # { name = "dev.frontend.user_url" , value = "http://user-dev.nellore.online:8080/" },
  # { name = "dev.frontend.cart_url" , value = "http://cart-dev.nellore.online:8080/" },
  # { name = "dev.frontend.shipping_url" , value = "http://shipping-dev.nellore.online:8080/" },
  # { name = "dev.frontend.payment_url" , value = "http://payment-dev.nellore.online:8080/" },

  { name = "dev.frontend.catalogue_url" , value = "http://catalogue-dev.nellore.online:80/" },
  { name = "dev.frontend.user_url" , value = "http://user-dev.nellore.online:80/" },
  { name = "dev.frontend.cart_url" , value = "http://cart-dev.nellore.online:80/" },
  { name = "dev.frontend.shipping_url" , value = "http://shipping-dev.nellore.online:80/" },
  { name = "dev.frontend.payment_url" , value = "http://payment-dev.nellore.online:80/" }

# catalogue_component_parameters
  { name = "dev.catalogue.mongo" , value = "MONGO=true" },
  { name = "dev.catalogue.mongo_url" , value = "mongodb://mongodb-dev.nellore.online:27017/catalogue" },

E { name = "dev.catalogue.mongo_endpoint", value = "mongodb-dev.nellore.online" },
# load_schema >>                         mongo --host MONGODB-SERVER-IPADDRESS </app/schema/catalogue.js

# user_component_parameters
  { name = "dev.user.mongo" , value = "MONGO=true" },
  { name = "dev.user.redis_host" , value = "redis-dev.nellore.online" },
  { name = "dev.user.mongo_url" , value = "mongodb://mongodb-dev.nellore.online:27017/users" },

# cart_component_parameters
  { name = "dev.cart.redis_host" , value = "redis-dev.nellore.online" },
  { name = "dev.cart.catalogue_host" , value = "catalogue-dev.nellore.online" },

  # { name = "dev.cart.catalogue_port" , value = "8080" },
  { name = "dev.cart.catalogue_port" , value = "80" },

# shipping_component_parameters
  # { name = "dev.shipping.cart_endpoint" , value = "cart-dev.nellore.online:8080" },
  { name = "dev.shipping.cart_endpoint" , value = "cart-dev.nellore.online:80" },

  { name = "dev.shipping.db_host" , value = "mysql-dev.nellore.online" },

E { name = "dev.shipping.db_user", value = "root" },
# Load_schema >> mysql -h <MYSQL-SERVER-IPADDRESS> -uroot -pRoboShop@1 < /app/schema/shipping.sql

  # payment_component_parameters
  { name = "dev.payment.cart_host" , value = "cart-dev.nellore.online" },
  { name = "dev.payment.cart_port" , value = "80" },
  { name = "dev.payment.user_host" , value = "user-dev.nellore.online" },
  { name = "dev.payment.user_port" , value = "80" },
  { name = "dev.payment.amqp_host" , value = "rabbitmq-dev.nellore.online" },
  { name = "dev.payment.amqp_user" , value = "roboshop" },
  #password >> { name = "dev.payment.amqp_pass" , value = "roboshop123" },

# dispatch_component_parameters
  { name = "dev.dispatch.amqp_host" , value = "rabbitmq-dev.nellore.online" },
  { name = "dev.dispatch.amqp_user" , value = "roboshop" },
  #password >> { name = "dev.dispatch.amqp_pass" , value = "cart-dev.nellore.online:8080" },
]

# docdb master_username
  { name = "dev.docdb.master_username" , value = "roboshop" },

# rds master_username
{ name = "dev.rds.master_username" , value = "roboshop" },


secret = [
# shipping_component_secret
E { name = "dev.shipping.db_pass", value = "RoboShop@1" }
# Load_schema >> mysql -h <MYSQL-SERVER-IPADDRESS> -uroot -pRoboShop@1 < /app/schema/shipping.sql

# payment_component_secret
  { name = "dev.payment.amqp_pass" , value = "roboshop123" },

# dispatch_component_secret
  { name = "dev.dispatch.amqp_pass" , value = "roboshop123" },

# docdb master_password
{ name = "dev.docdb.master_password" , value = "RoboShop1" },

# rds master_password
{ name = "dev.rds.master_password" , value = "RoboShop1" },
]
