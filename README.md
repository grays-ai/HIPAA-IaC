# HIPAA-terraform-healthcare-application

The idea of this Infrastructure as Code project is to have an open source version of HIPAA compliant programmaticaly provsioned AWS architecture. I personally found
the process of understanding the technical HIPAA requirements difficult, and so I hope this can be a resource to others. Its too hard to provision
infrastructure in the AWS GUI, and too hard to share that with others. Security comes with transparency!

Note: the documentation here isn't extensive enough. If you need more information, please contact jonahkaye@grays.ai. 

Deploys a django app and create-react-app with surround AWS hosted infrastructure managed by terraform


To use this repository, you must have the following installed:
- terraform
- aws cli (configured with your credentials)
- ansible

### Some HIPAA features:

- only https exposed to the outside world (other than ssh, which TODO should be on a specific IP)
- encrypted RDS
- encrypted and private s3 for patient data
- internal access controls on the patients s3 and RDS (TODO)
- cloudwatch logging (TODO)
- VPC (TODO audit)
    - - ALB communication within VPC over HTTP should be ok
- Docker images in ECR (Ok?)
- s3 Data retention (TODO)
- identity management (hard to do on infra)
- encrypted disks (should images in ECR be encrypted?) 
# Repository structure:

## 'build/': Implements ECR with versioned Django docker images

This terraform module provisions a private Elastic Container Repository (ECR).
The ECR is meant to be filled with images tagged with semantic versioning.
Images are built using the dockerfile at `/build/docker/Dockerfile` 
Images are based on code pulled from our private repository. You would replace the repo and the ssh key file with your own. 

### How to build and push a new version of the docker image:

Run
```
$ cd build
$ terraform init
$ terraform apply
```
You should be prompted for the version of the image you want to build and push.
This will build and push the image to ECR.
Run:
```
$ terraform output
```
to see where the ECR repository is located.
Use this URL and the version you specified to deploy the service to AWS. See below for more information.

### Teardown
Run
```
$ terraform destroy
```
In order to remove the ECR repository and all of its images.

## `dev/`: Implements a cloud deployment for development

### Pre-requisites
If you want to use this out of the box, you will need to have an S3 bucket created to store your terraform state.
Ours is in a bucket calls grays-tf-remote-state. Make sure to create a separate path for your build tf state and your dev tf state. 

### Deployed infrastructure

See `modules/service/` for a description of the infrastructure deployed by this module.
The result is a single Ec2 instance accessible at a custom domain name over HTTPS. In our application, we have a dockerized frontend
and backend running on a single ec2, sitting behind an ALB load balancer. 

### How are the apps deployed in this instance?


The Django handler is served by a daphne server.
The daphne server is run in a Docker container.

The frontend is currently served by the npm dev server (transitioning to nginx). 
The frontend is run in a Docker container. 

Both Docker containers are proxied by an ALB server. 

### What else is the development env comprised of?
1. Django app is hosted in an EC2 instance
2. An RDS instance is used to store the mapping of users (doctors) and the patients they are authorized to see
3. A private S3 bucket is used to store patients data
5. An ALB for serving both the crreate-react-app and the django app
6. A VPC for hosting private resources
7. A Route53 zone for providing a custom domain name for serving the django app through HTTPS through the ALB
8. Security groups for the ALB, EC2 instance and RDS instance that protect resources from unauthorized access
9. Subnets for hosting the EC2 instance and RDS instance

### How to deploy the service to AWS

#### Configure the service

Go to `dev/vars.tf` and change any variables you want to change. Everything is fine as is except for:
- 'app_version': This should be the version of the docker image you want to deploy. See the `build/` directory for more information on how to build and push a new version of the docker image.

#### Deploy the service

Run
```
$ cd dev
$ terraform init
$ terraform apply
```
This will deploy the service to AWS. This will configure the Ec2 to run the docker image you specified in `app_version`.
Run:
```
$ terraform output
```
For information on how to access the service. Important outputs are:
- ec2_endpoint: The public DNS name of the Ec2 instance
- ec2_priv_key_path: The path to the private key used to access the Ec2 instance. Use this to ssh into the instance for debugging.
- alb_dns_name: The public DNS name of the ELB. You can use this to access the service over HTTP.
- alb_endpoint: The custom DNS name of the ELB. You can use this to access the service over HTTPS.
- django_superuser_password: The password for the django superuser. Use this to log into the django admin interface. This is a sensitive value so you will have to call `terraform output django_superuser_password` to see it.
 to inspect this value.
- rds_password: The password for the RDS database. This is a sensitive value so you will have to call `terraform output rds_password` to see it.

The service should be available at the `alb_endpoint` URL in a few minutes. 

#### Teardown
Run
```
$ terraform destroy
```

This deletes any files, keys, and resources created by this module.

## `modules/service`: Reusable terraform module for the infrastructure for our django service.

See `modules/service/` for more information on the infrastructure deployed by this module.
See `modules/service/var.tf` for more information on the variables that can be configured for this module.


------------

If you dont want to use terraform and ansible to build your docker image, then you can do something like this instead using your own backend and frontend containers: 

docker-compose build backend
docker tag backend:instructor-latest 848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr:backend
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr
docker push 848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr:backend
ssh -i /Users/jonahkaye/.ssh/gray-ec2-key-dev-yancw9xa.pem ec2-user@44.194.24.68
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr
docker pull 848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr:backend
./run_backend.sh

To access your database: 

- docker run -it postgres psql -h gray-rds-dev-yancw9xa.crx8rth9mjna.us-east-1.rds.amazonaws.com -U rds_admin_user -d postgres -p 5432