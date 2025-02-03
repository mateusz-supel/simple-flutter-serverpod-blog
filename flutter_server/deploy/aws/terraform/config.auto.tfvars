# This is the main configuration file. You can deploy your Serverpod by only
# doing changes to this file. However, by default, the configuration uses
# the lowest tier for the database and Redis setup. You will want to edit the
# database.tf and redis.tf files if you need higher performance.


# The name of your project. Used to configure names of resources. In most
# instances you want to set this to the same as your Serverpod project name, but
# avoid any underscores.
# NOTE: the project name cannot use underscore, spaces, or any special
# characters.
project_name = "blog"

# The region where to deploy the server. If you change the region you will also
# need to update the instance_ami variable (see below) and update the region in
# the .github/workflows/deployment-aws.yml file. In some cases you will also
# need to update your instance_type.
aws_region = "eu-central-1"

# Enabling Redis may incur additional costs. You will also need to enable Redis
# in your staging.yaml and production.yaml configuration files.
enable_redis = false

# Domain and certificates used by this Serverpod. You will need to have created
# a public hosted zone in Route 53 and retrieved its id. You will also need to
# manually create a certificate in AWS's Certificate Manager. The certificate
# should cover the top domain and any subdomains. E.g. add example.com and
# *.example.com to your certificate. You will need to create one certificate
# for your main region and one for use with Cloudfront that resides in the
# us-east-1 region.
hosted_zone_id             = "Z00558511R1NBZFAK6SN1"
top_domain                 = "msupel.com"
certificate_arn            = "arn:aws:acm:eu-central-1:396866020863:certificate/71e885d7-a254-44a6-9e7e-f7a28f5601dc"
cloudfront_certificate_arn = "arn:aws:acm:us-east-1:396866020863:certificate/ecfd7ebd-933d-40de-87e8-24fb260154f5"

# Subdomains for different services. Default values are recommended, but you
# may want to change the subdomain_web to www if you are using the top domain
# for the web server.
subdomain_database = "database"
subdomain_redis    = "redis"
subdomain_api      = "api"
subdomain_insights = "insights"
subdomain_web      = "app"
subdomain_storage  = "storage"

subdomain_database_staging = "database-staging"
subdomain_redis_staging    = "redis-staging"
subdomain_api_staging      = "api-staging"
subdomain_insights_staging = "insights-staging"
subdomain_web_staging      = "app-staging"
subdomain_storage_staging  = "storage-staging"

# Set to true if you want to use the top domain for the web server.
use_top_domain_for_web = false

# The definition of the server instances to deploy. Note that if you change the
# region, you will have to change the AMI as they are bound to specific regions.
# Serverpod is tested with Amazon Linux 2 Kernel 5.x (You can find the AMI ids
# for a specific region under EC2 > AMI Catalog in your AWS console.)
# Note: For some regions the t2.micro is not available. If so, consult the AWS
# documentation to find another instance type that suits your needs.
instance_type                = "t2.small"
instance_ami                 = "ami-02ccbe126fe6afe82"
autoscaling_min_size         = 1
autoscaling_max_size         = 1
autoscaling_desired_capacity = 1


# Setup an additional server cluster and associated load balancers for staging.
# By default, the staging server uses the same database and Redis setup as the
# production server. If you want to change this behavior you will need add
# and edit the Terraform files.
# Note: By turning this feature on, the server setup will no longer fit within
# the AWS free tier as it will use multiple server instances and load balancers.
enable_staging_server = false

staging_instance_type                = "t2.small"
staging_autoscaling_min_size         = 1
staging_autoscaling_max_size         = 1
staging_autoscaling_desired_capacity = 1

# The deployment bucket name needs to be unique and can only contain lower case
# letters and dashes (no underscored allowed).
deployment_bucket_name              = "flutter-deployment-2808656"
public_storage_bucket_name          = "flutter-public-storage-2808656"
private_storage_bucket_name         = "flutter-private-storage-2808656"
public_storage_bucket_name_staging  = "flutter-public-storage-staging-2808656"
private_storage_bucket_name_staging = "flutter-private-storage-staging-2808656"